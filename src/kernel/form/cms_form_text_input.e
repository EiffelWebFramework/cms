note
	description: "Summary description for {CMS_FORM_TEXT_INPUT}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CMS_FORM_TEXT_INPUT

inherit
	CMS_FORM_INPUT

create
	make,
	make_with_text

feature -- Access

	input_type: STRING = "text"

end
