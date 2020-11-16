FEEDSTOCK_PATH := $(PWD)/feedstock-xmgrace

.PHONY: build
build:
	if [ ! -e "$(FEEDSTOCK_PATH)" ]; then conda smithy ci-skeleton --feedstock-directory $(FEEDSTOCK_PATH) xmgrace; fi	

	conda smithy rerender \
		--feedstock_directory $(FEEDSTOCK_PATH) \
		--no-check-uptodate

	conda build \
		-c conda-forge -c cdat \
		-m $(FEEDSTOCK_PATH)/.ci_support/linux_64_.yaml \
		--output-folder $(PWD)/output \
		$(FEEDSTOCK_PATH)/recipe
