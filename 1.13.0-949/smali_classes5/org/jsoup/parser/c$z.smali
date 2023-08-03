.class final Lorg/jsoup/parser/c$z;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "z"
.end annotation


# static fields
.field static final A:[Ljava/lang/String;

.field static final B:[Ljava/lang/String;

.field static final C:[Ljava/lang/String;

.field static final D:[Ljava/lang/String;

.field static final E:[Ljava/lang/String;

.field static final F:[Ljava/lang/String;

.field static final G:[Ljava/lang/String;

.field static final H:[Ljava/lang/String;

.field static final I:[Ljava/lang/String;

.field static final J:[Ljava/lang/String;

.field static final K:[Ljava/lang/String;

.field static final L:[Ljava/lang/String;

.field static final M:[Ljava/lang/String;

.field static final N:[Ljava/lang/String;

.field static final a:[Ljava/lang/String;

.field static final b:[Ljava/lang/String;

.field static final c:[Ljava/lang/String;

.field static final d:[Ljava/lang/String;

.field static final e:[Ljava/lang/String;

.field static final f:[Ljava/lang/String;

.field static final g:[Ljava/lang/String;

.field static final h:[Ljava/lang/String;

.field static final i:[Ljava/lang/String;

.field static final j:[Ljava/lang/String;

.field static final k:[Ljava/lang/String;

.field static final l:[Ljava/lang/String;

.field static final m:[Ljava/lang/String;

.field static final n:[Ljava/lang/String;

.field static final o:[Ljava/lang/String;

.field static final p:[Ljava/lang/String;

.field static final q:[Ljava/lang/String;

.field static final r:[Ljava/lang/String;

.field static final s:[Ljava/lang/String;

.field static final t:[Ljava/lang/String;

.field static final u:[Ljava/lang/String;

.field static final v:[Ljava/lang/String;

.field static final w:[Ljava/lang/String;

.field static final x:[Ljava/lang/String;

.field static final y:[Ljava/lang/String;

.field static final z:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 29

    const-string v0, "base"

    const-string v1, "basefont"

    const-string v2, "bgsound"

    const-string v3, "command"

    const-string v4, "link"

    .line 1
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->a:[Ljava/lang/String;

    const-string v0, "noframes"

    const-string v1, "style"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->b:[Ljava/lang/String;

    const-string v0, "body"

    const-string v2, "br"

    const-string v3, "html"

    .line 3
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/c$z;->c:[Ljava/lang/String;

    .line 4
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/jsoup/parser/c$z;->d:[Ljava/lang/String;

    const-string v4, "head"

    .line 5
    filled-new-array {v0, v2, v4, v3}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->e:[Ljava/lang/String;

    const-string v5, "basefont"

    const-string v6, "bgsound"

    const-string v7, "link"

    const-string v8, "meta"

    const-string v9, "noframes"

    const-string v10, "style"

    .line 6
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->f:[Ljava/lang/String;

    const-string v5, "base"

    const-string v6, "basefont"

    const-string v7, "bgsound"

    const-string v8, "command"

    const-string v9, "link"

    const-string v10, "meta"

    const-string v11, "noframes"

    const-string v12, "script"

    const-string v13, "style"

    const-string v14, "template"

    const-string v15, "title"

    .line 7
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->g:[Ljava/lang/String;

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "center"

    const-string v10, "details"

    const-string v11, "dir"

    const-string v12, "div"

    const-string v13, "dl"

    const-string v14, "fieldset"

    const-string v15, "figcaption"

    const-string v16, "figure"

    const-string v17, "footer"

    const-string v18, "header"

    const-string v19, "hgroup"

    const-string v20, "menu"

    const-string v21, "nav"

    const-string v22, "ol"

    const-string v23, "p"

    const-string v24, "section"

    const-string v25, "summary"

    const-string v26, "ul"

    .line 8
    filled-new-array/range {v5 .. v26}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->h:[Ljava/lang/String;

    const-string v5, "h1"

    const-string v6, "h2"

    const-string v7, "h3"

    const-string v8, "h4"

    const-string v9, "h5"

    const-string v10, "h6"

    .line 9
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->i:[Ljava/lang/String;

    const-string v2, "address"

    const-string v5, "div"

    const-string v6, "p"

    .line 10
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->j:[Ljava/lang/String;

    const-string v2, "dd"

    const-string v5, "dt"

    .line 11
    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->k:[Ljava/lang/String;

    const-string v5, "b"

    const-string v6, "big"

    const-string v7, "code"

    const-string v8, "em"

    const-string v9, "font"

    const-string v10, "i"

    const-string v11, "s"

    const-string v12, "small"

    const-string v13, "strike"

    const-string v14, "strong"

    const-string v15, "tt"

    const-string v16, "u"

    .line 12
    filled-new-array/range {v5 .. v16}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->l:[Ljava/lang/String;

    const-string v2, "applet"

    const-string v5, "marquee"

    const-string v6, "object"

    .line 13
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->m:[Ljava/lang/String;

    const-string v5, "area"

    const-string v6, "br"

    const-string v7, "embed"

    const-string v8, "img"

    const-string v9, "keygen"

    const-string v10, "wbr"

    .line 14
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->n:[Ljava/lang/String;

    const-string v2, "param"

    const-string v5, "source"

    const-string v6, "track"

    .line 15
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->o:[Ljava/lang/String;

    const-string v2, "action"

    const-string v5, "name"

    const-string v6, "prompt"

    .line 16
    filled-new-array {v2, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->p:[Ljava/lang/String;

    const-string v5, "caption"

    const-string v6, "col"

    const-string v7, "colgroup"

    const-string v8, "frame"

    const-string v9, "head"

    const-string v10, "tbody"

    const-string v11, "td"

    const-string v12, "tfoot"

    const-string v13, "th"

    const-string v14, "thead"

    const-string v15, "tr"

    .line 17
    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->q:[Ljava/lang/String;

    const-string v5, "address"

    const-string v6, "article"

    const-string v7, "aside"

    const-string v8, "blockquote"

    const-string v9, "button"

    const-string v10, "center"

    const-string v11, "details"

    const-string v12, "dir"

    const-string v13, "div"

    const-string v14, "dl"

    const-string v15, "fieldset"

    const-string v16, "figcaption"

    const-string v17, "figure"

    const-string v18, "footer"

    const-string v19, "header"

    const-string v20, "hgroup"

    const-string v21, "listing"

    const-string v22, "menu"

    const-string v23, "nav"

    const-string v24, "ol"

    const-string v25, "pre"

    const-string v26, "section"

    const-string v27, "summary"

    const-string v28, "ul"

    .line 18
    filled-new-array/range {v5 .. v28}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->r:[Ljava/lang/String;

    const-string v5, "a"

    const-string v6, "b"

    const-string v7, "big"

    const-string v8, "code"

    const-string v9, "em"

    const-string v10, "font"

    const-string v11, "i"

    const-string v12, "nobr"

    const-string v13, "s"

    const-string v14, "small"

    const-string v15, "strike"

    const-string v16, "strong"

    const-string v17, "tt"

    const-string v18, "u"

    .line 19
    filled-new-array/range {v5 .. v18}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lorg/jsoup/parser/c$z;->s:[Ljava/lang/String;

    const-string v2, "table"

    const-string v5, "tbody"

    const-string v6, "tfoot"

    const-string v7, "thead"

    const-string v8, "tr"

    .line 20
    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/jsoup/parser/c$z;->t:[Ljava/lang/String;

    .line 21
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lorg/jsoup/parser/c$z;->u:[Ljava/lang/String;

    const-string v9, "td"

    const-string v10, "th"

    .line 22
    filled-new-array {v9, v10, v8}, [Ljava/lang/String;

    move-result-object v11

    sput-object v11, Lorg/jsoup/parser/c$z;->v:[Ljava/lang/String;

    const-string v11, "script"

    const-string v12, "template"

    .line 23
    filled-new-array {v11, v1, v12}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/c$z;->w:[Ljava/lang/String;

    .line 24
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/jsoup/parser/c$z;->x:[Ljava/lang/String;

    const-string v1, "caption"

    const-string v9, "col"

    const-string v10, "colgroup"

    .line 25
    filled-new-array {v0, v1, v9, v10, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->y:[Ljava/lang/String;

    .line 26
    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->z:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "td"

    const-string v16, "tfoot"

    const-string v17, "th"

    const-string v18, "thead"

    const-string v19, "tr"

    .line 27
    filled-new-array/range {v11 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->A:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "tbody"

    const-string v17, "td"

    const-string v18, "tfoot"

    const-string v19, "th"

    const-string v20, "thead"

    const-string v21, "tr"

    .line 28
    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->B:[Ljava/lang/String;

    .line 29
    filled-new-array {v2, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->C:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "tfoot"

    const-string v16, "thead"

    .line 30
    filled-new-array/range {v11 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->D:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "td"

    const-string v17, "th"

    const-string v18, "tr"

    .line 31
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->E:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "tbody"

    const-string v15, "tfoot"

    const-string v16, "thead"

    const-string v17, "tr"

    .line 32
    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->F:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "caption"

    const-string v13, "col"

    const-string v14, "colgroup"

    const-string v15, "html"

    const-string v16, "td"

    const-string v17, "th"

    .line 33
    filled-new-array/range {v11 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->G:[Ljava/lang/String;

    const-string v0, "input"

    const-string v2, "keygen"

    const-string v3, "textarea"

    .line 34
    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->H:[Ljava/lang/String;

    const-string v11, "caption"

    const-string v12, "table"

    const-string v13, "tbody"

    const-string v14, "td"

    const-string v15, "tfoot"

    const-string v16, "th"

    const-string v17, "thead"

    const-string v18, "tr"

    .line 35
    filled-new-array/range {v11 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->I:[Ljava/lang/String;

    .line 36
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->J:[Ljava/lang/String;

    const-string v0, "noscript"

    .line 37
    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->K:[Ljava/lang/String;

    const-string v11, "body"

    const-string v12, "col"

    const-string v13, "colgroup"

    const-string v14, "html"

    const-string v15, "tbody"

    const-string v16, "td"

    const-string v17, "tfoot"

    const-string v18, "th"

    const-string v19, "thead"

    const-string v20, "tr"

    .line 38
    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->L:[Ljava/lang/String;

    const-string v11, "base"

    const-string v12, "basefont"

    const-string v13, "bgsound"

    const-string v14, "link"

    const-string v15, "meta"

    const-string v16, "noframes"

    const-string v17, "script"

    const-string v18, "style"

    const-string v19, "template"

    const-string v20, "title"

    .line 39
    filled-new-array/range {v11 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->M:[Ljava/lang/String;

    .line 40
    filled-new-array {v1, v10, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c$z;->N:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
