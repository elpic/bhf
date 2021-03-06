var PlatformHelper = new Class({
	version: 0.1,

	options: {
	},

	Implements: [Options, Events],

	initialize: function(_object, _options) {
		if ( ! _object) { return; }
		this.setOptions(_options);
		var scope = _object;
		var _this = this;

		scope.getElements('.pagination a, thead a').addEvent('click', function(e){
			e.preventDefault();
			_this.fireEvent('paginationStart', [this])
		});
		scope.getElements('.search').addEvent('submit', function(e){
			_this.fireEvent('search');
			e.preventDefault();
			var hidden_search = this.getElement('.hidden_search');
			if (hidden_search) {
				hidden_search.destroy();
			}
			var request = new Request.bhf({
				method: 'get',
				url: e.target.get('action'),
				onFailure: function(){
					_this.fireEvent('searchFailure');
				},
				onSuccess: function(a, b, html){
					scope.innerHTML = html;
					_this.fireEvent('searchSuccess', [request])
				}
			}).send({data: e.target});
		});
		scope.addEvent('click:relay(.quick_edit)', function(e){
			e.preventDefault();
			_this.fireEvent('quickEditStart', [this]);
		});
		scope.addEvent('click:relay(.action a, .js_toggle)', function(e){
			this.addClass('clicked');
			setTimeout(function(){
				this.removeClass('clicked');
			}.bind(this), 1500);
		});
		scope.getElements('.js_delete').addEvent('mouseenter', function(){
			this.getParent('tr').addClass('background_delete');
		}).addEvent('mouseleave', function(){
			this.getParent('tr').removeClass('background_delete');
		});
	}
});
