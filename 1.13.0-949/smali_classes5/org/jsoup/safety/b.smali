.class public Lorg/jsoup/safety/b;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/b$d;,
        Lorg/jsoup/safety/b$a;,
        Lorg/jsoup/safety/b$b;,
        Lorg/jsoup/safety/b$c;,
        Lorg/jsoup/safety/b$e;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/b$d;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/b$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/b$d;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/b$a;",
            "Lorg/jsoup/safety/b$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/b$d;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/b$a;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/b$c;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lorg/jsoup/safety/b;->e:Z

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/b;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lorg/jsoup/safety/b;-><init>()V

    .line 8
    iget-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    iget-object v1, p1, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 9
    iget-object v0, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 10
    iget-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 11
    iget-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    iget-object v1, p1, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 12
    iget-boolean p1, p1, Lorg/jsoup/safety/b;->e:Z

    iput-boolean p1, p0, Lorg/jsoup/safety/b;->e:Z

    return-void
.end method

.method public static e()Lorg/jsoup/safety/b;
    .locals 25

    .line 1
    new-instance v0, Lorg/jsoup/safety/b;

    invoke-direct {v0}, Lorg/jsoup/safety/b;-><init>()V

    const-string v1, "a"

    const-string v2, "b"

    const-string v3, "blockquote"

    const-string v4, "br"

    const-string v5, "cite"

    const-string v6, "code"

    const-string v7, "dd"

    const-string v8, "dl"

    const-string v9, "dt"

    const-string v10, "em"

    const-string v11, "i"

    const-string v12, "li"

    const-string v13, "ol"

    const-string v14, "p"

    const-string v15, "pre"

    const-string v16, "q"

    const-string v17, "small"

    const-string v18, "span"

    const-string v19, "strike"

    const-string v20, "strong"

    const-string v21, "sub"

    const-string v22, "sup"

    const-string v23, "u"

    const-string v24, "ul"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/b;->d([Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v1, "href"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    .line 3
    invoke-virtual {v0, v3, v2}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v2, "cite"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "blockquote"

    .line 4
    invoke-virtual {v0, v5, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "q"

    .line 5
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "ftp"

    const-string v6, "http"

    const-string v7, "https"

    const-string v8, "mailto"

    filled-new-array {v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v0, v3, v1, v4}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v5, v2, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v0, v2, v2, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v1, "rel"

    const-string v2, "nofollow"

    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lorg/jsoup/safety/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    return-object v0
.end method

.method public static f()Lorg/jsoup/safety/b;
    .locals 8

    .line 1
    invoke-static {}, Lorg/jsoup/safety/b;->e()Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v1, "img"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {v0, v2}, Lorg/jsoup/safety/b;->d([Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v2, "align"

    const-string v3, "alt"

    const-string v4, "height"

    const-string v5, "src"

    const-string v6, "title"

    const-string v7, "width"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v2, "http"

    const-string v3, "https"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "src"

    .line 4
    invoke-virtual {v0, v1, v3, v2}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    return-object v0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static k()Lorg/jsoup/safety/b;
    .locals 1

    new-instance v0, Lorg/jsoup/safety/b;

    invoke-direct {v0}, Lorg/jsoup/safety/b;-><init>()V

    return-object v0
.end method

.method public static m()Lorg/jsoup/safety/b;
    .locals 43

    .line 1
    new-instance v0, Lorg/jsoup/safety/b;

    invoke-direct {v0}, Lorg/jsoup/safety/b;-><init>()V

    const-string v1, "a"

    const-string v2, "b"

    const-string v3, "blockquote"

    const-string v4, "br"

    const-string v5, "caption"

    const-string v6, "cite"

    const-string v7, "code"

    const-string v8, "col"

    const-string v9, "colgroup"

    const-string v10, "dd"

    const-string v11, "div"

    const-string v12, "dl"

    const-string v13, "dt"

    const-string v14, "em"

    const-string v15, "h1"

    const-string v16, "h2"

    const-string v17, "h3"

    const-string v18, "h4"

    const-string v19, "h5"

    const-string v20, "h6"

    const-string v21, "i"

    const-string v22, "img"

    const-string v23, "li"

    const-string v24, "ol"

    const-string v25, "p"

    const-string v26, "pre"

    const-string v27, "q"

    const-string v28, "small"

    const-string v29, "span"

    const-string v30, "strike"

    const-string v31, "strong"

    const-string v32, "sub"

    const-string v33, "sup"

    const-string v34, "table"

    const-string v35, "tbody"

    const-string v36, "td"

    const-string v37, "tfoot"

    const-string v38, "th"

    const-string v39, "thead"

    const-string v40, "tr"

    const-string v41, "u"

    const-string v42, "ul"

    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/b;->d([Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v1, "href"

    const-string v2, "title"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "a"

    .line 3
    invoke-virtual {v0, v3, v2}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v2, "cite"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "blockquote"

    .line 4
    invoke-virtual {v0, v5, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "span"

    const-string v6, "width"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "col"

    .line 5
    invoke-virtual {v0, v8, v7}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "colgroup"

    .line 6
    invoke-virtual {v0, v7, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v7, "align"

    const-string v8, "alt"

    const-string v9, "height"

    const-string v10, "src"

    const-string v11, "title"

    const-string v12, "width"

    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v4

    const-string v7, "img"

    .line 7
    invoke-virtual {v0, v7, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "start"

    const-string v8, "type"

    filled-new-array {v4, v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "ol"

    .line 8
    invoke-virtual {v0, v9, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const-string v9, "q"

    .line 9
    invoke-virtual {v0, v9, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "summary"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v10, "table"

    .line 10
    invoke-virtual {v0, v10, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "abbr"

    const-string v10, "axis"

    const-string v11, "colspan"

    const-string v12, "rowspan"

    filled-new-array {v4, v10, v11, v12, v6}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "td"

    .line 11
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v10, "abbr"

    const-string v11, "axis"

    const-string v12, "colspan"

    const-string v13, "rowspan"

    const-string v14, "scope"

    const-string v15, "width"

    filled-new-array/range {v10 .. v15}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "th"

    .line 12
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v4

    const-string v6, "ul"

    .line 13
    invoke-virtual {v0, v6, v4}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    const-string v4, "ftp"

    const-string v6, "http"

    const-string v8, "https"

    const-string v10, "mailto"

    filled-new-array {v4, v6, v8, v10}, [Ljava/lang/String;

    move-result-object v4

    .line 14
    invoke-virtual {v0, v3, v1, v4}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v0, v5, v2, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v2, v2, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "src"

    .line 17
    invoke-virtual {v0, v7, v3, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    filled-new-array {v6, v8}, [Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {v0, v9, v2, v1}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    return-object v0
.end method

.method public static r()Lorg/jsoup/safety/b;
    .locals 6

    .line 1
    new-instance v0, Lorg/jsoup/safety/b;

    invoke-direct {v0}, Lorg/jsoup/safety/b;-><init>()V

    const-string v1, "b"

    const-string v2, "em"

    const-string v3, "i"

    const-string v4, "strong"

    const-string v5, "u"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/b;->d([Ljava/lang/String;)Lorg/jsoup/safety/b;

    move-result-object v0

    return-object v0
.end method

.method private s(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/g;",
            "Lorg/jsoup/nodes/a;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/b$c;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p2}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    move-result-object p1

    .line 4
    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/safety/b;->e:Z

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p2, p1}, Lorg/jsoup/nodes/a;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/jsoup/safety/b$c;

    .line 7
    invoke-virtual {p3}, Lorg/jsoup/safety/b$e;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "#"

    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 9
    invoke-direct {p0, p1}, Lorg/jsoup/safety/b;->j(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 11
    invoke-static {p1}, Lorg/jsoup/internal/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "No attribute names supplied."

    invoke-static {v0, v2}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 4
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 8
    invoke-static {v3}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 9
    invoke-static {v3}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10
    :cond_1
    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 12
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 13
    :cond_2
    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {p2}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object p2

    .line 7
    invoke-static {p3}, Lorg/jsoup/safety/b$b;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$b;

    move-result-object p3

    .line 8
    iget-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p2, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public varargs c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iget-object v1, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 10
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_1

    .line 12
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 14
    :goto_1
    array-length p2, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    .line 15
    invoke-static {v1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 16
    invoke-static {v1}, Lorg/jsoup/safety/b$c;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$c;

    move-result-object v1

    .line 17
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public varargs d([Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3
    invoke-static {v2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-static {v2}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method g(Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/b;

    invoke-direct {v0}, Lorg/jsoup/nodes/b;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 3
    iget-object v1, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/safety/b$a;

    invoke-virtual {v2}, Lorg/jsoup/safety/b$e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/safety/b$b;

    invoke-virtual {v1}, Lorg/jsoup/safety/b$e;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/jsoup/nodes/b;->E(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/b;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected h(Ljava/lang/String;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object v0

    .line 2
    invoke-virtual {p3}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5
    iget-object p1, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 7
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, p2, p3, p1}, Lorg/jsoup/safety/b;->s(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3

    :cond_2
    return v4

    .line 8
    :cond_3
    iget-object v1, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/b;->g(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object v0

    .line 10
    invoke-virtual {p3}, Lorg/jsoup/nodes/a;->c()Ljava/lang/String;

    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->t(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 12
    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lorg/jsoup/nodes/a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const-string v0, ":all"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v0, p2, p3}, Lorg/jsoup/safety/b;->h(Ljava/lang/String;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    return v3
.end method

.method protected i(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public l(Z)Lorg/jsoup/safety/b;
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/safety/b;->e:Z

    return-object p0
.end method

.method public varargs n(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "No attribute names supplied."

    invoke-static {v0, v2}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 4
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 6
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 7
    invoke-static {v4}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 8
    invoke-static {v4}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_1
    iget-object p2, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 11
    invoke-interface {p2, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 13
    iget-object p2, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, ":all"

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jsoup/safety/b$d;

    .line 16
    iget-object v0, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 17
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 18
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    iget-object v0, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 1

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {p2}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 7
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public varargs p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 5

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 3
    invoke-static {p3}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object p1

    .line 5
    invoke-static {p2}, Lorg/jsoup/safety/b$a;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$a;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Cannot remove a protocol that is not set."

    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 7
    iget-object v0, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 8
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2, v1}, Lorg/jsoup/helper/d;->e(ZLjava/lang/String;)V

    .line 9
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 10
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 11
    invoke-static {v4}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 12
    invoke-static {v4}, Lorg/jsoup/safety/b$c;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$c;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 14
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 16
    iget-object p2, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public varargs q([Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 3
    invoke-static {v2}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 4
    invoke-static {v2}, Lorg/jsoup/safety/b$d;->a(Ljava/lang/String;)Lorg/jsoup/safety/b$d;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lorg/jsoup/safety/b;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    iget-object v3, p0, Lorg/jsoup/safety/b;->b:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lorg/jsoup/safety/b;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lorg/jsoup/safety/b;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
