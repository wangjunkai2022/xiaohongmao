.class abstract enum Lorg/jsoup/parser/c;
.super Ljava/lang/Enum;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/parser/c$z;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/parser/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jsoup/parser/c;

.field public static final enum b:Lorg/jsoup/parser/c;

.field public static final enum c:Lorg/jsoup/parser/c;

.field public static final enum d:Lorg/jsoup/parser/c;

.field public static final enum e:Lorg/jsoup/parser/c;

.field public static final enum f:Lorg/jsoup/parser/c;

.field public static final enum g:Lorg/jsoup/parser/c;

.field public static final enum h:Lorg/jsoup/parser/c;

.field public static final enum i:Lorg/jsoup/parser/c;

.field public static final enum j:Lorg/jsoup/parser/c;

.field public static final enum k:Lorg/jsoup/parser/c;

.field public static final enum l:Lorg/jsoup/parser/c;

.field public static final enum m:Lorg/jsoup/parser/c;

.field public static final enum n:Lorg/jsoup/parser/c;

.field public static final enum o:Lorg/jsoup/parser/c;

.field public static final enum p:Lorg/jsoup/parser/c;

.field public static final enum q:Lorg/jsoup/parser/c;

.field public static final enum r:Lorg/jsoup/parser/c;

.field public static final enum s:Lorg/jsoup/parser/c;

.field public static final enum t:Lorg/jsoup/parser/c;

.field public static final enum u:Lorg/jsoup/parser/c;

.field public static final enum v:Lorg/jsoup/parser/c;

.field public static final enum w:Lorg/jsoup/parser/c;

.field public static final enum x:Lorg/jsoup/parser/c;

.field private static final y:Ljava/lang/String;

.field private static final synthetic z:[Lorg/jsoup/parser/c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lorg/jsoup/parser/c$k;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/parser/c$k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->a:Lorg/jsoup/parser/c;

    .line 2
    new-instance v0, Lorg/jsoup/parser/c$r;

    const-string v1, "BeforeHtml"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$r;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/c;

    .line 3
    new-instance v0, Lorg/jsoup/parser/c$s;

    const-string v1, "BeforeHead"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/c;

    .line 4
    new-instance v0, Lorg/jsoup/parser/c$t;

    const-string v1, "InHead"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    .line 5
    new-instance v0, Lorg/jsoup/parser/c$u;

    const-string v1, "InHeadNoscript"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$u;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->e:Lorg/jsoup/parser/c;

    .line 6
    new-instance v0, Lorg/jsoup/parser/c$v;

    const-string v1, "AfterHead"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$v;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->f:Lorg/jsoup/parser/c;

    .line 7
    new-instance v0, Lorg/jsoup/parser/c$w;

    const-string v1, "InBody"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    .line 8
    new-instance v0, Lorg/jsoup/parser/c$x;

    const-string v1, "Text"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    .line 9
    new-instance v0, Lorg/jsoup/parser/c$y;

    const-string v1, "InTable"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$y;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    .line 10
    new-instance v0, Lorg/jsoup/parser/c$a;

    const-string v1, "InTableText"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->j:Lorg/jsoup/parser/c;

    .line 11
    new-instance v0, Lorg/jsoup/parser/c$b;

    const-string v1, "InCaption"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->k:Lorg/jsoup/parser/c;

    .line 12
    new-instance v0, Lorg/jsoup/parser/c$c;

    const-string v1, "InColumnGroup"

    const/16 v3, 0xb

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->l:Lorg/jsoup/parser/c;

    .line 13
    new-instance v0, Lorg/jsoup/parser/c$d;

    const-string v1, "InTableBody"

    const/16 v3, 0xc

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    .line 14
    new-instance v0, Lorg/jsoup/parser/c$e;

    const-string v1, "InRow"

    const/16 v3, 0xd

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->n:Lorg/jsoup/parser/c;

    .line 15
    new-instance v0, Lorg/jsoup/parser/c$f;

    const-string v1, "InCell"

    const/16 v3, 0xe

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->o:Lorg/jsoup/parser/c;

    .line 16
    new-instance v0, Lorg/jsoup/parser/c$g;

    const-string v1, "InSelect"

    const/16 v3, 0xf

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->p:Lorg/jsoup/parser/c;

    .line 17
    new-instance v0, Lorg/jsoup/parser/c$h;

    const-string v1, "InSelectInTable"

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->q:Lorg/jsoup/parser/c;

    .line 18
    new-instance v0, Lorg/jsoup/parser/c$i;

    const-string v1, "InTemplate"

    const/16 v3, 0x11

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    .line 19
    new-instance v0, Lorg/jsoup/parser/c$j;

    const-string v1, "AfterBody"

    const/16 v3, 0x12

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->s:Lorg/jsoup/parser/c;

    .line 20
    new-instance v0, Lorg/jsoup/parser/c$l;

    const-string v1, "InFrameset"

    const/16 v3, 0x13

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->t:Lorg/jsoup/parser/c;

    .line 21
    new-instance v0, Lorg/jsoup/parser/c$m;

    const-string v1, "AfterFrameset"

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$m;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->u:Lorg/jsoup/parser/c;

    .line 22
    new-instance v0, Lorg/jsoup/parser/c$n;

    const-string v1, "AfterAfterBody"

    const/16 v3, 0x15

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->v:Lorg/jsoup/parser/c;

    .line 23
    new-instance v0, Lorg/jsoup/parser/c$o;

    const-string v1, "AfterAfterFrameset"

    const/16 v3, 0x16

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->w:Lorg/jsoup/parser/c;

    .line 24
    new-instance v0, Lorg/jsoup/parser/c$p;

    const-string v1, "ForeignContent"

    const/16 v3, 0x17

    invoke-direct {v0, v1, v3}, Lorg/jsoup/parser/c$p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/parser/c;->x:Lorg/jsoup/parser/c;

    .line 25
    invoke-static {}, Lorg/jsoup/parser/c;->a()[Lorg/jsoup/parser/c;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c;->z:[Lorg/jsoup/parser/c;

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jsoup/parser/c;->y:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/jsoup/parser/c$k;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/jsoup/parser/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[Lorg/jsoup/parser/c;
    .locals 3

    const/16 v0, 0x18

    new-array v0, v0, [Lorg/jsoup/parser/c;

    sget-object v1, Lorg/jsoup/parser/c;->a:Lorg/jsoup/parser/c;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->b:Lorg/jsoup/parser/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->c:Lorg/jsoup/parser/c;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->d:Lorg/jsoup/parser/c;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->e:Lorg/jsoup/parser/c;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->f:Lorg/jsoup/parser/c;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->g:Lorg/jsoup/parser/c;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->i:Lorg/jsoup/parser/c;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->j:Lorg/jsoup/parser/c;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->k:Lorg/jsoup/parser/c;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->l:Lorg/jsoup/parser/c;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->m:Lorg/jsoup/parser/c;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->n:Lorg/jsoup/parser/c;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->o:Lorg/jsoup/parser/c;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->p:Lorg/jsoup/parser/c;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->q:Lorg/jsoup/parser/c;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->r:Lorg/jsoup/parser/c;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->s:Lorg/jsoup/parser/c;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->t:Lorg/jsoup/parser/c;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->u:Lorg/jsoup/parser/c;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->v:Lorg/jsoup/parser/c;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->w:Lorg/jsoup/parser/c;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/parser/c;->x:Lorg/jsoup/parser/c;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic b(Lorg/jsoup/parser/Token;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/parser/c;->m(Lorg/jsoup/parser/Token;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/c;->k(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    return-void
.end method

.method static synthetic d(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/c;->i(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V

    return-void
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/c;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/parser/c;->l(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static i(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->e:Lorg/jsoup/parser/j;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->n0()V

    .line 3
    sget-object v0, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method private static k(Lorg/jsoup/parser/Token$h;Lorg/jsoup/parser/b;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lorg/jsoup/parser/k;->c:Lorg/jsoup/parser/i;

    sget-object v1, Lorg/jsoup/parser/j;->c:Lorg/jsoup/parser/j;

    invoke-virtual {v0, v1}, Lorg/jsoup/parser/i;->B(Lorg/jsoup/parser/j;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/parser/b;->n0()V

    .line 3
    sget-object v0, Lorg/jsoup/parser/c;->h:Lorg/jsoup/parser/c;

    invoke-virtual {p1, v0}, Lorg/jsoup/parser/b;->T0(Lorg/jsoup/parser/c;)V

    .line 4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/b;->W(Lorg/jsoup/parser/Token$h;)Lorg/jsoup/nodes/g;

    return-void
.end method

.method private static l(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lorg/jsoup/internal/f;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static m(Lorg/jsoup/parser/Token;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/parser/Token;->a()Lorg/jsoup/parser/Token$c;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/parser/Token$c;->q()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lorg/jsoup/internal/f;->g(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/c;
    .locals 1

    const-class v0, Lorg/jsoup/parser/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/parser/c;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/parser/c;
    .locals 1

    sget-object v0, Lorg/jsoup/parser/c;->z:[Lorg/jsoup/parser/c;

    invoke-virtual {v0}, [Lorg/jsoup/parser/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/parser/c;

    return-object v0
.end method


# virtual methods
.method abstract n(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/b;)Z
.end method
