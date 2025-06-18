export default {
  title: "VitePress Demo",
  description: "Demo dokumentácia vo VitePress",
  base: "/docs-vitepress-demo/",
  themeConfig: {
    nav: [
      { text: "Slovensky", link: "/sk/" },
      { text: "English", link: "/en/" }
    ],
    sidebar: {
      "/sk/": [
        { text: "Úvod", link: "/sk/" }
      ],
      "/en/": [
        { text: "Welcome", link: "/en/" }
      ]
    }
  }
}
