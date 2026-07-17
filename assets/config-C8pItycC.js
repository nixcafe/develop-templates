var e={accentColor:`#4fc3f7`,baseUrl:`https://templates.nixcafe.org`,basePath:`/`,cacheDir:`/home/runner/work/nixcafe-docs/nixcafe-docs/apps/develop-templates/node_modules/.cache/vocs`,checkDeadlinks:`warn`,codeHighlight:{langAlias:{sol:`solidity`,js:`javascript`,cjs:`javascript`,mjs:`javascript`,md:`markdown`,jade:`pug`,ts:`typescript`,cts:`typescript`,mts:`typescript`,coffeescript:`coffee`,regex:`regexp`,"c++":`cpp`,gql:`graphql`,yml:`yaml`,hbs:`handlebars`,bash:`shellscript`,sh:`shellscript`,shell:`shellscript`,zsh:`shellscript`,py:`python`,jl:`julia`,styl:`stylus`,lit:`ts-tags`,dockerfile:`docker`,protobuf:`proto`,rs:`rust`},langs:[`ansi`,`bash`,`html`,`js`,`json`,`jsx`,`markdown`,`md`,`mdx`,`plaintext`,`rust`,`sol`,`solidity`,`ts`,`tsx`,`zsh`,`nix`],themes:{light:`github-light`,dark:`github-dark-dimmed`}},colorScheme:`dark`,description:`develop-templates - Nix flake templates for reproducible development environments`,editLink:{text:`Suggest changes to this page`,link:`https://github.com/nixcafe/nixcafe-docs/edit/main/apps/develop-templates/src/pages/:path`},feedback:!1,head:`_vocs-fn_() => ({
		meta: {
			ogType: "website",
			ogSiteName: "nixcafe",
			twitterCard: "summary_large_image",
			robots: "index, follow",
			author: "nixcafe",
			themeColor: "#0d0d0d"
		},
		link: [{
			rel: "sitemap",
			type: "application/xml",
			href: "https://templates.nixcafe.org/sitemap.xml"
		}],
		script: [{
			type: "application/ld+json",
			textContent: {
				"@context": "https://schema.org",
				"@graph": [{
					"@type": "SoftwareSourceCode",
					name: "develop-templates",
					description: "Nix flake templates for reproducible development environments",
					url: "https://templates.nixcafe.org",
					codeRepository: "https://github.com/nixcafe/develop-templates",
					programmingLanguage: "Nix",
					applicationCategory: "DeveloperApplication",
					license: "CC0-1.0"
				}, {
					"@type": "WebSite",
					name: "develop-templates",
					url: "https://templates.nixcafe.org",
					description: "develop-templates - Nix flake templates documentation"
				}]
			}
		}]
	})`,iconUrl:{light:`/logo.svg`,dark:`/logo-dark.svg`},logoUrl:{light:`/logo.svg`,dark:`/logo-dark.svg`},outDir:`dist`,pagesDir:`pages`,renderStrategy:`full-static`,rootDir:`/home/runner/work/nixcafe-docs/nixcafe-docs/apps/develop-templates`,search:{query:{boostDocument:`_vocs-fn_(_id, _term, storedFields) => {
                    const priority = storedFields?.['searchPriority'] ?? 1;
                    const href = storedFields?.['href'];
                    const isDocsPath = href?.startsWith('/docs/');
                    // Treat /docs/ as root for depth calculation (subtract 1)
                    const segments = href ? href.split('/').filter(Boolean).length : 1;
                    const depth = isDocsPath ? Math.max(segments - 1, 1) : segments;
                    const depthBoost = 1 / Math.max(depth, 1);
                    const docsBoost = isDocsPath ? 1.5 : 1;
                    return priority * depthBoost * docsBoost;
                }`,combineWith:`AND`,fuzzy:.2,prefix:!0,boost:{title:4,subtitle:3,text:2,category:1,titles:1}},boostDocument:`_vocs-fn_(_id, _term, storedFields) => {
                    const priority = storedFields?.['searchPriority'] ?? 1;
                    const href = storedFields?.['href'];
                    const isDocsPath = href?.startsWith('/docs/');
                    // Treat /docs/ as root for depth calculation (subtract 1)
                    const segments = href ? href.split('/').filter(Boolean).length : 1;
                    const depth = isDocsPath ? Math.max(segments - 1, 1) : segments;
                    const depthBoost = 1 / Math.max(depth, 1);
                    const docsBoost = isDocsPath ? 1.5 : 1;
                    return priority * depthBoost * docsBoost;
                }`,combineWith:`AND`,fuzzy:.2,prefix:!0,boost:{title:4,subtitle:3,text:2,category:1,titles:1}},sidebar:[{text:`Introduction`,link:`/`},{text:`Guide`,collapsed:!1,items:[{text:`Quick Start`,link:`/quick-start`},{text:`Available Templates`,link:`/templates`},{text:`Contributing`,link:`/contributing`}]}],socials:[{icon:`github`,link:`https://github.com/nixcafe`}],srcDir:`src`,title:`develop-templates`,titleTemplate:`%s – develop-templates`,trailingSlashRedirect:!0};export{e as t};