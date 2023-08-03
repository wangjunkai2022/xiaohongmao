.class public Lorg/jsoup/parser/b;
.super Lorg/jsoup/parser/k;
.source "HtmlTreeBuilder.java"


# static fields
.field static final A:[Ljava/lang/String;

.field static final B:[Ljava/lang/String;

.field static final C:[Ljava/lang/String;

.field static final D:[Ljava/lang/String;

.field static final E:[Ljava/lang/String;

.field static final F:[Ljava/lang/String;

.field static final G:[Ljava/lang/String;

.field public static final H:I = 0x64

.field private static final I:I = 0x100

.field private static final J:I = 0xc

.field static final synthetic K:Z

.field static final z:[Ljava/lang/String;


# instance fields
.field private l:Lorg/jsoup/parser/c;

.field private m:Lorg/jsoup/parser/c;

.field private n:Z

.field private o:Lorg/jsoup/nodes/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private p:Lorg/jsoup/nodes/i;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private q:Lorg/jsoup/nodes/g;
    .annotation runtime Lr7/h;
    .end annotation
.end field

.field private r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/parser/c;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lorg/jsoup/parser/Token$g;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 80

    const-string v0, "applet"

    const-string v1, "caption"

    const-string v2, "html"

    const-string v3, "marquee"

    const-string v4, "object"

    const-string v5, "table"

    const-string v6, "td"

    const-string v7, "th"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->z:[Ljava/lang/String;

    const-string v0, "ol"

    const-string v1, "ul"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->A:[Ljava/lang/String;

    const-string v0, "button"

    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->B:[Ljava/lang/String;

    const-string v0, "html"

    const-string v1, "table"

    .line 4
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->C:[Ljava/lang/String;

    const-string v0, "optgroup"

    const-string v1, "option"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->D:[Ljava/lang/String;

    const-string v1, "dd"

    const-string v2, "dt"

    const-string v3, "li"

    const-string v4, "optgroup"

    const-string v5, "option"

    const-string v6, "p"

    const-string v7, "rb"

    const-string v8, "rp"

    const-string v9, "rt"

    const-string v10, "rtc"

    .line 6
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->E:[Ljava/lang/String;

    const-string v1, "caption"

    const-string v2, "colgroup"

    const-string v3, "dd"

    const-string v4, "dt"

    const-string v5, "li"

    const-string v6, "optgroup"

    const-string v7, "option"

    const-string v8, "p"

    const-string v9, "rb"

    const-string v10, "rp"

    const-string v11, "rt"

    const-string v12, "rtc"

    const-string v13, "tbody"

    const-string v14, "td"

    const-string v15, "tfoot"

    const-string v16, "th"

    const-string v17, "thead"

    const-string v18, "tr"

    .line 7
    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->F:[Ljava/lang/String;

    const-string v1, "address"

    const-string v2, "applet"

    const-string v3, "area"

    const-string v4, "article"

    const-string v5, "aside"

    const-string v6, "base"

    const-string v7, "basefont"

    const-string v8, "bgsound"

    const-string v9, "blockquote"

    const-string v10, "body"

    const-string v11, "br"

    const-string v12, "button"

    const-string v13, "caption"

    const-string v14, "center"

    const-string v15, "col"

    const-string v16, "colgroup"

    const-string v17, "command"

    const-string v18, "dd"

    const-string v19, "details"

    const-string v20, "dir"

    const-string v21, "div"

    const-string v22, "dl"

    const-string v23, "dt"

    const-string v24, "embed"

    const-string v25, "fieldset"

    const-string v26, "figcaption"

    const-string v27, "figure"

    const-string v28, "footer"

    const-string v29, "form"

    const-string v30, "frame"

    const-string v31, "frameset"

    const-string v32, "h1"

    const-string v33, "h2"

    const-string v34, "h3"

    const-string v35, "h4"

    const-string v36, "h5"

    const-string v37, "h6"

    const-string v38, "head"

    const-string v39, "header"

    const-string v40, "hgroup"

    const-string v41, "hr"

    const-string v42, "html"

    const-string v43, "iframe"

    const-string v44, "img"

    const-string v45, "input"

    const-string v46, "isindex"

    const-string v47, "li"

    const-string v48, "link"

    const-string v49, "listing"

    const-string v50, "marquee"

    const-string v51, "menu"

    const-string v52, "meta"

    const-string v53, "nav"

    const-string v54, "noembed"

    const-string v55, "noframes"

    const-string v56, "noscript"

    const-string v57, "object"

    const-string v58, "ol"

    const-string v59, "p"

    const-string v60, "param"

    const-string v61, "plaintext"

    const-string v62, "pre"

    const-string v63, "script"

    const-string v64, "section"

    const-string v65, "select"

    const-string v66, "style"

    const-string v67, "summary"

    const-string v68, "table"

    const-string v69, "tbody"

    const-string v70, "td"

    const-string v71, "textarea"

    const-string v72, "tfoot"

    const-string v73, "th"

    const-string v74, "thead"

    const-string v75, "title"

    const-string v76, "tr"

    const-string v77, "ul"

    const-string v78, "wbr"

    const-string v79, "xmp"

    .line 8
    filled-new-array/range {v1 .. v79}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/b;->G:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/jsoup/parser/k;-><init>()V

    const/4 v0, 0x0

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/b;->y:[Ljava/lang/String;

    return-void
.end method

.method private L0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/g;",
            ">;",
            "Lorg/jsoup/nodes/g;",
            "Lorg/jsoup/nodes/g;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Lorg/jsoup/helper/d;->d(Z)V

    .line 3
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private T(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->y:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 2
    invoke-direct {p0, v0, p2, p3}, Lorg/jsoup/parser/b;->U([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private U([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le v0, v2, :cond_0

    add-int/lit8 v2, v0, -0x64

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-lt v0, v2, :cond_4

    .line 2
    iget-object v4, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/g;

    invoke-virtual {v4}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v4

    .line 3
    invoke-static {v4, p1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-static {v4, p2}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    invoke-static {v4, p3}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private e0(Lorg/jsoup/nodes/k;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->h0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/c$z;->C:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->c0(Lorg/jsoup/nodes/k;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    .line 6
    :goto_0
    instance-of v0, p1, Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jsoup/nodes/g;

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->i2()Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/i;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/i;->u2(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/i;

    :cond_2
    return-void
.end method

.method private k0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/b;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static s0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/g;",
            ">;",
            "Lorg/jsoup/nodes/g;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/16 v3, 0x100

    if-lt v0, v3, :cond_0

    add-int/lit16 v3, v0, -0x100

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/g;

    if-ne v4, p1, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private varargs t([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/jsoup/internal/f;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method A(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->v:Z

    return-void
.end method

.method A0(Lorg/jsoup/nodes/g;)I
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method B()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->v:Z

    return v0
.end method

.method B0(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/c;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    .line 2
    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/c;->n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method

.method C()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->E(Z)V

    return-void
.end method

.method C0(Lorg/jsoup/nodes/g;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method D(Ljava/lang/String;)V
    .locals 2

    .line 1
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jsoup/parser/b;->E:[Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/k;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method D0(Lorg/jsoup/nodes/g;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/nodes/g;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method E(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lorg/jsoup/parser/b;->F:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/jsoup/parser/b;->E:[Ljava/lang/String;

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->v0()Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_1
    return-void
.end method

.method E0(Lorg/jsoup/parser/c;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method F(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method F0(Lorg/jsoup/nodes/g;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/nodes/g;)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object p2, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method G()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method G0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->m0()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->t0(Lorg/jsoup/nodes/g;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0xc

    const/4 v3, 0x0

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :cond_1
    const/4 v4, 0x1

    sub-int/2addr v1, v4

    move v5, v1

    :cond_2
    if-ne v5, v2, :cond_3

    goto :goto_0

    .line 4
    :cond_3
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    if-eqz v0, :cond_4

    .line 5
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->t0(Lorg/jsoup/nodes/g;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_5

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    .line 7
    :cond_5
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jsoup/parser/b;->g0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Lorg/jsoup/nodes/k;->j()I

    move-result v4

    if-lez v4, :cond_6

    .line 10
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/jsoup/nodes/b;->f(Lorg/jsoup/nodes/b;)V

    .line 11
    :cond_6
    iget-object v4, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v1, :cond_4

    :cond_7
    :goto_1
    return-void
.end method

.method H()Lorg/jsoup/nodes/Document;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method H0(Lorg/jsoup/nodes/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method I()Lorg/jsoup/nodes/i;
    .locals 1
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/i;

    return-object v0
.end method

.method I0(Lorg/jsoup/nodes/g;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    if-ne v2, p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method J(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 4
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x100

    if-lt v0, v1, :cond_0

    add-int/lit16 v1, v0, -0x100

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-lt v0, v1, :cond_2

    .line 2
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method J0()Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method K()Lorg/jsoup/nodes/g;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method K0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/b;->L0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method L()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/b;->t:Ljava/util/List;

    return-object v0
.end method

.method M()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/jsoup/nodes/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method M0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Lorg/jsoup/parser/b;->L0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V

    return-void
.end method

.method N(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->B:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->Q(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method N0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/16 v2, 0x100

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    add-int/lit16 v2, v0, -0x100

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2
    :goto_0
    iget-object v4, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 3
    sget-object v4, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v4}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-lt v0, v2, :cond_17

    .line 4
    iget-object v5, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/g;

    if-ne v0, v2, :cond_3

    .line 5
    iget-boolean v4, p0, Lorg/jsoup/parser/b;->x:Z

    if-eqz v4, :cond_2

    .line 6
    iget-object v5, p0, Lorg/jsoup/parser/b;->q:Lorg/jsoup/nodes/g;

    :cond_2
    const/4 v4, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 7
    invoke-virtual {v5}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_4
    const-string v5, ""

    .line 8
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v6, "caption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v7, 0xe

    goto/16 :goto_3

    :sswitch_1
    const-string v6, "thead"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto/16 :goto_3

    :cond_6
    const/16 v7, 0xd

    goto/16 :goto_3

    :sswitch_2
    const-string v6, "tfoot"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto/16 :goto_3

    :cond_7
    const/16 v7, 0xc

    goto/16 :goto_3

    :sswitch_3
    const-string v6, "tbody"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_3

    :cond_8
    const/16 v7, 0xb

    goto/16 :goto_3

    :sswitch_4
    const-string v6, "table"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto/16 :goto_3

    :cond_9
    const/16 v7, 0xa

    goto/16 :goto_3

    :sswitch_5
    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto/16 :goto_3

    :cond_a
    const/16 v7, 0x9

    goto/16 :goto_3

    :sswitch_6
    const-string v6, "head"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto/16 :goto_3

    :cond_b
    const/16 v7, 0x8

    goto/16 :goto_3

    :sswitch_7
    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_3

    :cond_c
    const/4 v7, 0x7

    goto :goto_3

    :sswitch_8
    const-string v6, "tr"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_3

    :cond_d
    const/4 v7, 0x6

    goto :goto_3

    :sswitch_9
    const-string v6, "th"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    goto :goto_3

    :cond_e
    const/4 v7, 0x5

    goto :goto_3

    :sswitch_a
    const-string v6, "td"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    goto :goto_3

    :cond_f
    const/4 v7, 0x4

    goto :goto_3

    :sswitch_b
    const-string v6, "colgroup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_3

    :cond_10
    const/4 v7, 0x3

    goto :goto_3

    :sswitch_c
    const-string v6, "select"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    goto :goto_3

    :cond_11
    const/4 v7, 0x2

    goto :goto_3

    :sswitch_d
    const-string v6, "template"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto :goto_3

    :cond_12
    const/4 v7, 0x1

    goto :goto_3

    :sswitch_e
    const-string v6, "frameset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    goto :goto_3

    :cond_13
    const/4 v7, 0x0

    :goto_3
    packed-switch v7, :pswitch_data_0

    goto :goto_5

    .line 9
    :pswitch_0
    sget-object v0, Lorg/jsoup/parser/c;->k:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 10
    :pswitch_1
    sget-object v0, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 11
    :pswitch_2
    sget-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 12
    :pswitch_3
    iget-object v0, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/g;

    if-nez v0, :cond_14

    sget-object v0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/c;

    goto :goto_4

    :cond_14
    sget-object v0, Lorg/jsoup/parser/c;->f:Lorg/jsoup/parser/c;

    :goto_4
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    :pswitch_4
    if-nez v4, :cond_15

    .line 13
    sget-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 14
    :pswitch_5
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 15
    :pswitch_6
    sget-object v0, Lorg/jsoup/parser/c;->n:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    :pswitch_7
    if-nez v4, :cond_15

    .line 16
    sget-object v0, Lorg/jsoup/parser/c;->o:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    :cond_15
    :goto_5
    if-eqz v4, :cond_16

    .line 17
    sget-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    :cond_16
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 18
    :pswitch_8
    sget-object v0, Lorg/jsoup/parser/c;->l:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 19
    :pswitch_9
    sget-object v0, Lorg/jsoup/parser/c;->p:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 20
    :pswitch_a
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->y()Lorg/jsoup/parser/c;

    move-result-object v0

    const-string v1, "Bug: no template insertion mode on stack!"

    .line 21
    invoke-static {v0, v1}, Lorg/jsoup/helper/d;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    goto :goto_6

    .line 23
    :pswitch_b
    sget-object v0, Lorg/jsoup/parser/c;->t:Lorg/jsoup/parser/c;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    :cond_17
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_e
        -0x4ec53386 -> :sswitch_d
        -0x3600cb04 -> :sswitch_c
        -0x25eb9b01 -> :sswitch_b
        0xe70 -> :sswitch_a
        0xe74 -> :sswitch_9
        0xe7e -> :sswitch_8
        0x2e39a2 -> :sswitch_7
        0x30cde0 -> :sswitch_6
        0x3107ab -> :sswitch_5
        0x6903bce -> :sswitch_4
        0x690e016 -> :sswitch_3
        0x692b2e2 -> :sswitch_2
        0x6937454 -> :sswitch_1
        0x20ef99e6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method O(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->A:[Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->Q(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method O0(Lorg/jsoup/nodes/i;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/i;

    return-void
.end method

.method P(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/jsoup/parser/b;->Q(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method P0(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/jsoup/parser/b;->w:Z

    return-void
.end method

.method Q(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lorg/jsoup/parser/b;->z:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lorg/jsoup/parser/b;->T(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method Q0(Lorg/jsoup/nodes/g;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/g;

    return-void
.end method

.method R([Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/b;->z:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/b;->U([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method R0()Lorg/jsoup/parser/c;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    return-object v0
.end method

.method S(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v3, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v3}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 5
    :cond_0
    sget-object v4, Lorg/jsoup/parser/b;->D:[Ljava/lang/String;

    invoke-static {v3, v4}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const-string p1, "Should not be reachable"

    .line 6
    invoke-static {p1}, Lorg/jsoup/helper/d;->a(Ljava/lang/String;)V

    return v2
.end method

.method S0()I
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method T0(Lorg/jsoup/parser/c;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    return-void
.end method

.method V(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lorg/jsoup/parser/b;->C:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/jsoup/parser/b;->T(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/b;->n(Lorg/jsoup/parser/e;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    iget-object v2, p1, Lorg/jsoup/parser/Token$i;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "Dropped duplicate attribute(s) in tag [%s]"

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/parser/k;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v0, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 8
    iget-object v0, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    iget-object v1, p0, Lorg/jsoup/parser/b;->u:Lorg/jsoup/parser/Token$g;

    invoke-virtual {v1}, Lorg/jsoup/parser/Token$i;->H()Lorg/jsoup/parser/Token$i;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jsoup/parser/Token$i;->E(Ljava/lang/String;)Lorg/jsoup/parser/Token$i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/i;->o(Lorg/jsoup/parser/Token;)V

    return-object p1

    .line 9
    :cond_1
    new-instance v0, Lorg/jsoup/nodes/g;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, v1, v2}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v3, p1}, Lorg/jsoup/parser/e;->c(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 10
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->X(Lorg/jsoup/nodes/g;)V

    return-object v0
.end method

.method X(Lorg/jsoup/nodes/g;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lorg/jsoup/parser/b;->e0(Lorg/jsoup/nodes/k;)V

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method Y(Lorg/jsoup/parser/Token$c;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lorg/jsoup/nodes/c;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    new-instance p1, Lorg/jsoup/nodes/e;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/e;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lorg/jsoup/nodes/n;

    invoke-direct {p1, v2}, Lorg/jsoup/nodes/n;-><init>(Ljava/lang/String;)V

    .line 9
    :goto_0
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method Z(Lorg/jsoup/parser/Token$d;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/jsoup/nodes/d;

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$d;->s()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jsoup/nodes/d;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->e0(Lorg/jsoup/nodes/k;)V

    return-void
.end method

.method a0(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/g;

    iget-object v2, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    iget-object v3, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/e;->c(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 3
    invoke-direct {p0, v1}, Lorg/jsoup/parser/b;->e0(Lorg/jsoup/nodes/k;)V

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->C()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/jsoup/parser/g;->l()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Tag [%s] cannot be self closing; not a void tag"

    invoke-virtual {p1, v0, v2}, Lorg/jsoup/parser/i;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lorg/jsoup/parser/g;->o()Lorg/jsoup/parser/g;

    :cond_1
    :goto_0
    return-object v1
.end method

.method b0(Lorg/jsoup/parser/Token$h;ZZ)Lorg/jsoup/nodes/i;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/parser/Token$i;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/i;

    iget-object v2, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    iget-object p1, p1, Lorg/jsoup/parser/Token$i;->l:Lorg/jsoup/nodes/b;

    invoke-virtual {v2, p1}, Lorg/jsoup/parser/e;->c(Lorg/jsoup/nodes/b;)Lorg/jsoup/nodes/b;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, p1}, Lorg/jsoup/nodes/i;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    if-eqz p3, :cond_0

    const-string p1, "template"

    .line 3
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->r0(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/b;->O0(Lorg/jsoup/nodes/i;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lorg/jsoup/parser/b;->O0(Lorg/jsoup/nodes/i;)V

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lorg/jsoup/parser/b;->e0(Lorg/jsoup/nodes/k;)V

    if-eqz p2, :cond_2

    .line 7
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method c()Lorg/jsoup/parser/e;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/e;->c:Lorg/jsoup/parser/e;

    return-object v0
.end method

.method c0(Lorg/jsoup/nodes/k;)V
    .locals 3

    const-string v0, "table"

    .line 1
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object v1

    const/4 v2, 0x1

    move-object v2, v1

    const/4 v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->q(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    :goto_0
    if-eqz v1, :cond_2

    .line 6
    invoke-static {v0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/g;->z0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    :goto_1
    return-void
.end method

.method d0()V
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V
    .locals 0
    .annotation runtime Lr7/j;
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/parser/k;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V

    .line 2
    sget-object p1, Lorg/jsoup/parser/c;->a:Lorg/jsoup/parser/c;

    iput-object p1, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/c;

    const/4 p2, 0x0

    .line 4
    iput-boolean p2, p0, Lorg/jsoup/parser/b;->n:Z

    .line 5
    iput-object p1, p0, Lorg/jsoup/parser/b;->o:Lorg/jsoup/nodes/g;

    .line 6
    iput-object p1, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/i;

    .line 7
    iput-object p1, p0, Lorg/jsoup/parser/b;->q:Lorg/jsoup/nodes/g;

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->t:Ljava/util/List;

    .line 11
    new-instance p1, Lorg/jsoup/parser/Token$g;

    invoke-direct {p1}, Lorg/jsoup/parser/Token$g;-><init>()V

    iput-object p1, p0, Lorg/jsoup/parser/b;->u:Lorg/jsoup/parser/Token$g;

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lorg/jsoup/parser/b;->v:Z

    .line 13
    iput-boolean p2, p0, Lorg/jsoup/parser/b;->w:Z

    .line 14
    iput-boolean p2, p0, Lorg/jsoup/parser/b;->x:Z

    return-void
.end method

.method f0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Lorg/jsoup/helper/d;->d(Z)V

    .line 3
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    add-int/2addr p1, v0

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method protected g(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "script"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method g0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/nodes/g;

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, p1, v1}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->X(Lorg/jsoup/nodes/g;)V

    return-object v0
.end method

.method bridge synthetic h()Lorg/jsoup/parser/k;
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->p0()Lorg/jsoup/parser/b;

    move-result-object v0

    return-object v0
.end method

.method h0()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->w:Z

    return v0
.end method

.method i0()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jsoup/parser/b;->x:Z

    return v0
.end method

.method j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;
    .locals 2
    .param p2    # Lorg/jsoup/nodes/g;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/f;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/jsoup/parser/c;->a:Lorg/jsoup/parser/c;

    iput-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    .line 2
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p3, p4}, Lorg/jsoup/parser/b;->f(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)V

    .line 3
    iput-object p2, p0, Lorg/jsoup/parser/b;->q:Lorg/jsoup/nodes/g;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lorg/jsoup/parser/b;->x:Z

    const/4 p4, -0x1

    if-eqz p2, :cond_d

    .line 5
    invoke-virtual {p2}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p2}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->O2()Lorg/jsoup/nodes/Document$QuirksMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Document;->P2(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    .line 7
    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string p1, "noembed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string p1, "plaintext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string p1, "noscript"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    goto :goto_1

    :sswitch_3
    const-string p1, "noframes"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_4
    const-string p1, "title"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_5
    const-string p1, "style"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_6
    const-string p1, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_7
    const-string p1, "script"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_8
    const-string p1, "textarea"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "iframe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_0

    :sswitch_a
    const-string p1, "template"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_0

    :cond_a
    const/4 p1, 0x0

    :cond_b
    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 9
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 10
    :pswitch_0
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->g:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 11
    :pswitch_1
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 12
    :pswitch_2
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->f:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 13
    :pswitch_3
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->c:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 14
    :pswitch_4
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->e:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    goto :goto_2

    .line 15
    :pswitch_5
    iget-object p1, p0, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->a:Lorg/jsoup/parser/j;

    invoke-virtual {p1, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 16
    sget-object p1, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->E0(Lorg/jsoup/parser/c;)V

    .line 17
    :goto_2
    new-instance p1, Lorg/jsoup/nodes/g;

    iget-object v1, p0, Lorg/jsoup/parser/k;->h:Lorg/jsoup/parser/e;

    invoke-virtual {p0, v0, v1}, Lorg/jsoup/parser/k;->p(Ljava/lang/String;Lorg/jsoup/parser/e;)Lorg/jsoup/parser/g;

    move-result-object v0

    invoke-direct {p1, v0, p3}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;)V

    .line 18
    iget-object p3, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p3, p1}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    .line 19
    iget-object p3, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->N0()V

    move-object p3, p2

    :goto_3
    if-eqz p3, :cond_e

    .line 21
    instance-of v0, p3, Lorg/jsoup/nodes/i;

    if-eqz v0, :cond_c

    .line 22
    check-cast p3, Lorg/jsoup/nodes/i;

    iput-object p3, p0, Lorg/jsoup/parser/b;->p:Lorg/jsoup/nodes/i;

    goto :goto_4

    .line 23
    :cond_c
    invoke-virtual {p3}, Lorg/jsoup/nodes/g;->M1()Lorg/jsoup/nodes/g;

    move-result-object p3

    goto :goto_3

    :cond_d
    const/4 p1, 0x0

    .line 24
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->o()V

    if-eqz p2, :cond_10

    .line 25
    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->e0()Ljava/util/List;

    move-result-object p2

    .line 26
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_f

    .line 27
    invoke-virtual {p1, p4, p2}, Lorg/jsoup/nodes/g;->y1(ILjava/util/Collection;)Lorg/jsoup/nodes/g;

    .line 28
    :cond_f
    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->p()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 29
    :cond_10
    iget-object p1, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->p()Ljava/util/List;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_a
        -0x47007d5c -> :sswitch_9
        -0x3bcc48c6 -> :sswitch_8
        -0x361a2f35 -> :sswitch_7
        0x1d017 -> :sswitch_6
        0x68b1db1 -> :sswitch_5
        0x6942258 -> :sswitch_4
        0x47177da7 -> :sswitch_3
        0x5c7ac9cc -> :sswitch_2
        0x759d29f7 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method j0(Lorg/jsoup/nodes/g;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/b;->s0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;)Z

    move-result p1

    return p1
.end method

.method protected k(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    invoke-virtual {v0, p1, p0}, Lorg/jsoup/parser/c;->n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z

    move-result p1

    return p1
.end method

.method l0(Lorg/jsoup/nodes/g;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object p1

    .line 2
    sget-object v0, Lorg/jsoup/parser/b;->G:[Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method m0()Lorg/jsoup/nodes/g;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/parser/k;->n(Ljava/lang/String;Lorg/jsoup/nodes/b;)Z

    move-result p1

    return p1
.end method

.method n0()V
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    iput-object v0, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/c;

    return-void
.end method

.method o0(Lorg/jsoup/nodes/g;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/parser/b;->n:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "href"

    .line 2
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iput-object p1, p0, Lorg/jsoup/parser/k;->f:Ljava/lang/String;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lorg/jsoup/parser/b;->n:Z

    .line 6
    iget-object v0, p0, Lorg/jsoup/parser/k;->d:Lorg/jsoup/nodes/Document;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/k;->Z(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method p0()Lorg/jsoup/parser/b;
    .locals 1

    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    return-object v0
.end method

.method q(Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/g;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method q0()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/b;->t:Ljava/util/List;

    return-void
.end method

.method r(Lorg/jsoup/nodes/g;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_3

    .line 2
    iget-object v2, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    if-nez v2, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-direct {p0, p1, v2}, Lorg/jsoup/parser/b;->k0(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 4
    iget-object p1, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method r0(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method s()V
    .locals 1

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/b;->J0()Lorg/jsoup/nodes/g;

    move-result-object v0

    if-nez v0, :cond_0

    :cond_1
    return-void
.end method

.method t0(Lorg/jsoup/nodes/g;)Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lorg/jsoup/parser/b;->s0(Ljava/util/ArrayList;Lorg/jsoup/nodes/g;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TreeBuilder{currentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentElement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method u()V
    .locals 4

    const-string v0, "tbody"

    const-string v1, "tfoot"

    const-string v2, "thead"

    const-string v3, "template"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->t([Ljava/lang/String;)V

    return-void
.end method

.method u0()Lorg/jsoup/parser/c;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/c;

    return-object v0
.end method

.method v()V
    .locals 2

    const-string v0, "table"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->t([Ljava/lang/String;)V

    return-void
.end method

.method v0()Lorg/jsoup/nodes/g;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/g;

    return-object v0
.end method

.method w()V
    .locals 2

    const-string v0, "tr"

    const-string v1, "template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jsoup/parser/b;->t([Ljava/lang/String;)V

    return-void
.end method

.method w0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    .line 3
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method x(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->D(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/k;->a()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/parser/b;->R0()Lorg/jsoup/parser/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/b;->z(Lorg/jsoup/parser/c;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jsoup/parser/b;->x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method x0(Ljava/lang/String;)Lorg/jsoup/nodes/g;
    .locals 3
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method y()Lorg/jsoup/parser/c;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method varargs y0([Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    .line 3
    iget-object v2, p0, Lorg/jsoup/parser/k;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lorg/jsoup/nodes/g;->J1()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/jsoup/internal/f;->d(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method z(Lorg/jsoup/parser/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/k;->a:Lorg/jsoup/parser/f;

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/k;->a:Lorg/jsoup/parser/f;

    invoke-virtual {v0}, Lorg/jsoup/parser/f;->a()Lorg/jsoup/parser/ParseErrorList;

    move-result-object v0

    new-instance v1, Lorg/jsoup/parser/d;

    iget-object v2, p0, Lorg/jsoup/parser/k;->b:Lorg/jsoup/parser/a;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    .line 3
    invoke-virtual {v5}, Lorg/jsoup/parser/Token;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/jsoup/parser/k;->g:Lorg/jsoup/parser/Token;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    const-string p1, "Unexpected %s token [%s] when in state [%s]"

    invoke-direct {v1, v2, p1, v3}, Lorg/jsoup/parser/d;-><init>(Lorg/jsoup/parser/a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method z0()Lorg/jsoup/parser/c;
    .locals 2
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/c;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
