/**
 * Script de feedback para aprovação da cliente.
 * Envia comentário + id da página (GUID do body) para o endpoint configurado.
 */
(function () {
	'use strict';

	var endpoint = '/api/feedback.aspx';

	function getPageId() {
		var body = document.body;
		if (body && body.id && body.id.indexOf('page-') === 0) {
			return body.id.replace('page-', '');
		}
		return '';
	}

	function getPageUrl() {
		return window.location.href || '';
	}

	function init() {
		var btn = document.getElementById('feedback-btn');
		var textarea = document.getElementById('feedback-text');
		var msg = document.getElementById('feedback-msg');
		if (!btn || !textarea || !msg) return;

		btn.addEventListener('click', function () {
			var text = (textarea.value || '').trim();
			if (!text) {
				msg.textContent = 'Digite seu comentário antes de enviar.';
				msg.style.color = '#b34';
				return;
			}

			var payload = {
				pageId: getPageId(),
				pageUrl: getPageUrl(),
				comment: text,
				createdAt: new Date().toISOString()
			};

			msg.textContent = 'Enviando...';
			msg.style.color = '#666';

			fetch(endpoint, {
				method: 'POST',
				headers: { 'Content-Type': 'application/json' },
				body: JSON.stringify(payload)
			})
				.then(function (res) {
					if (res.ok) {
						msg.textContent = 'Feedback enviado com sucesso. Obrigado!';
						msg.style.color = '#383';
						textarea.value = '';
					} else {
						msg.textContent = 'Não foi possível enviar. Tente de novo ou envie por e-mail.';
						msg.style.color = '#b34';
					}
				})
				.catch(function () {
					msg.textContent = 'Erro de conexão. Verifique se o servidor de feedback está ativo.';
					msg.style.color = '#b34';
				});
		});
	}

	if (document.readyState === 'loading') {
		document.addEventListener('DOMContentLoaded', init);
	} else {
		init();
	}
})();
