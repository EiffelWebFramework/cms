note
	description: "Summary description for {CMS_MODULE}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	DEMO_MODULE

inherit
	CMS_MODULE

create
	make

feature {NONE} -- Initialization

	make
		do
			name := "demo"
			version := "1.0"
			description := "demo"
			package := "misc"
		end

feature {CMS_SERVICE} -- Registration

	service: detachable CMS_SERVICE

	register (a_service: CMS_SERVICE)
		do
			service := a_service
			a_service.map_uri_template ("/demo/date/{arg}", agent handle_date_time_demo (a_service, ?, ?))
			a_service.map_uri_template ("/demo/format/{arg}", agent handle_format_demo (a_service, ?, ?))
		end

feature -- Hooks

	links: HASH_TABLE [CMS_MODULE_LINK, STRING]
			-- Link indexed by path
		local
--			lnk: CMS_MODULE_LINK
		do
			create Result.make (0)
--			create lnk.make ("Date/time demo")
--			lnk.set_callback (agent process_date_time_demo, <<"arg">>)
--			Result["/demo/date/{arg}"] := lnk
		end

	handle_date_time_demo (cms: CMS_SERVICE; req: WSF_REQUEST; res: WSF_RESPONSE)
		do
			(create {ANY_CMS_EXECUTION}.make_with_text (req, res, cms, "<h1>Demo::date/time</h1>")).execute
		end

	handle_format_demo (cms: CMS_SERVICE; req: WSF_REQUEST; res: WSF_RESPONSE)
		do
			(create {ANY_CMS_EXECUTION}.make_with_text (req, res, cms, "<h1>Demo::format</h1>")).execute
		end

end
