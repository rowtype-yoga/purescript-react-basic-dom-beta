module Beta.DOM.HTML.Article (article) where

import Prelude

import Beta.DOM.Attributes (BaseAttributes)
import Beta.DOM.Internal (FFIComponent, createBuiltinElement)

-- | The `<article>` element in HTML, represents a self-contained composition in a document,
-- | page, application, or site, which is intended to be independently distributable or
-- | reusable (e.g., in syndication). Examples include: a forum post, a magazine or newspaper
-- | article, a blog entry, an object, or any other independent item of content.
-- |
-- | #### Example:
-- | ```purescript
-- | article { className: "blog-post" } [ h1 { } "Blog Post Title", p { } "Content of the blog post" ]
-- | ```
article :: FFIComponent BaseAttributes
article = createBuiltinElement "article"