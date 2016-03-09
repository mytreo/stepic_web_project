def wsgi_application(environ, start_response):
	#environ переменные окруженич (map)
	#там wsgi.input тело запроса
	#+ стандартные REQUEST_URI, QUERY_STRING,USER_AGENT, PATH_INFO(путь в урле), 
	#Cookie
	#start_responce спец функция для начала ответа
	
	#---бизнес логика
	resp = environ['QUERY_STRING'].split("&")
    resp = [item+"\n" for item in resp]
	#---
	
	status = '200 OK'
	headers = [
		('Content-Type', 'text/plain')
	]
	#body iterable
	body = resp
	start_response(status, headers)
	return [ body ]