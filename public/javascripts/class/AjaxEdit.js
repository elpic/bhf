var AjaxEdit = new Class({
	version: 0.2,

	Implements: [Options, Events],

	holder: new Element('div.quick_edit_holder'),

	initialize: function(_options) {
		this.setOptions(_options);
		this.holder.addEvents({
			'click:relay(.open)': function(e){
				e.preventDefault();
				location.href = this.wrapElement.getElement('a').get('href');
			}.bind(this),
			'click:relay(.cancel)': function(e){
				e.preventDefault();
				this.close();
			}.bind(this),
			'click:relay(.save_and_next)': function(e){
				e.preventDefault();
				this.submit(['successAndChange', 'successAndNext']);
			}.bind(this),
			'click:relay(.save)': function(e){
				e.preventDefault();
				this.submit(['successAndChange']);
			}.bind(this),
			'submit:relay(form)': function(e){
				e.preventDefault();
				this.submit(['successAndChange']);
			}.bind(this)
		});
	},

	startEdit: function(element, wrapElement){
		this.clean();
		this.wrapElement = wrapElement ? wrapElement : element;
		this.wrapElement.addClass('live_edit');
		
		new Request({
			method: 'get',
			url: element.get('href'),
			onSuccess: function(html){
				this.holder.innerHTML = html;
				this.holder.inject($('content'));
			}.bind(this)
		}).send();
	},

	submit: function(eventNames){
		var form = this.holder.getElement('form');
		new Request.JSON({
			method: form.get('method'),
			url: form.get('action'),
			onRequest: function(){
				this.disableButtons();
			}.bind(this),
			onFailure: function(invalidForm){
				this.holder.innerHTML = invalidForm.response;
				this.holder.inject(document.body);
			}.bind(this),
			onSuccess: function(json){
				if ( ! eventNames.contains('successAndNext')) {
					this.close();
				}
				eventNames.each(function(eventName){
					this.fireEvent(eventName, [json]);
				}.bind(this));
			}.bind(this)
		}).send({data: form});
	},

	disableButtons: function(){
		this.holder.getElements('.open, .cancel, .save_and_next, .save').set('disabled', 'disabled');
	},

	clean: function(){
		document.body.getElements('.live_edit').removeClass('live_edit');
	},
	
	close: function(){
		this.clean();
		this.holder.dispose();
	}
});