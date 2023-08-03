.class public Lorg/jsoup/parser/f;
.super Ljava/lang/Object;
.source "Parser.java"


# instance fields
.field private a:Lorg/jsoup/parser/k;

.field private b:Lorg/jsoup/parser/ParseErrorList;

.field private c:Lorg/jsoup/parser/e;


# direct methods
.method private constructor <init>(Lorg/jsoup/parser/f;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iget-object v0, p1, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    invoke-virtual {v0}, Lorg/jsoup/parser/k;->h()Lorg/jsoup/parser/k;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    .line 7
    new-instance v0, Lorg/jsoup/parser/ParseErrorList;

    iget-object v1, p1, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-direct {v0, v1}, Lorg/jsoup/parser/ParseErrorList;-><init>(Lorg/jsoup/parser/ParseErrorList;)V

    iput-object v0, p0, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 8
    new-instance v0, Lorg/jsoup/parser/e;

    iget-object p1, p1, Lorg/jsoup/parser/f;->c:Lorg/jsoup/parser/e;

    invoke-direct {v0, p1}, Lorg/jsoup/parser/e;-><init>(Lorg/jsoup/parser/e;)V

    iput-object v0, p0, Lorg/jsoup/parser/f;->c:Lorg/jsoup/parser/e;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/parser/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/parser/k;->c()Lorg/jsoup/parser/e;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/f;->c:Lorg/jsoup/parser/e;

    .line 4
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    return-void
.end method

.method public static c()Lorg/jsoup/parser/f;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/f;

    new-instance v1, Lorg/jsoup/parser/b;

    invoke-direct {v1}, Lorg/jsoup/parser/b;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    .line 2
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/jsoup/parser/f;

    invoke-direct {p0, v0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    invoke-virtual {v0, v1, p1, p0}, Lorg/jsoup/parser/k;->i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/jsoup/nodes/Document;->B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v1

    .line 3
    invoke-static {p0, v1, p1}, Lorg/jsoup/parser/f;->i(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    new-array v2, p1, [Lorg/jsoup/nodes/k;

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/jsoup/nodes/k;

    .line 5
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-lez v2, :cond_0

    .line 6
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lorg/jsoup/nodes/k;->S()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    array-length v2, p0

    :goto_1
    if-ge p1, v2, :cond_1

    aget-object v3, p0, p1

    .line 8
    invoke-virtual {v1, v3}, Lorg/jsoup/nodes/g;->p0(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/g;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static i(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    .line 2
    new-instance v1, Lorg/jsoup/parser/f;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/b;->j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/ParseErrorList;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    .line 2
    new-instance v1, Lorg/jsoup/parser/f;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    .line 3
    iput-object p3, v1, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    .line 4
    invoke-virtual {v0, p0, p1, p2, v1}, Lorg/jsoup/parser/b;->j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/parser/l;

    invoke-direct {v0}, Lorg/jsoup/parser/l;-><init>()V

    .line 2
    new-instance v1, Lorg/jsoup/parser/f;

    invoke-direct {v1, v0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    invoke-virtual {v0, p0, p1, v1}, Lorg/jsoup/parser/l;->y(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/parser/i;

    new-instance v1, Lorg/jsoup/parser/a;

    invoke-direct {v1, p0}, Lorg/jsoup/parser/a;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/jsoup/parser/i;-><init>(Lorg/jsoup/parser/a;Lorg/jsoup/parser/ParseErrorList;)V

    .line 2
    invoke-virtual {v0, p1}, Lorg/jsoup/parser/i;->C(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static t()Lorg/jsoup/parser/f;
    .locals 2

    new-instance v0, Lorg/jsoup/parser/f;

    new-instance v1, Lorg/jsoup/parser/l;

    invoke-direct {v1}, Lorg/jsoup/parser/l;-><init>()V

    invoke-direct {v0, v1}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    return-object v0
.end method


# virtual methods
.method public a()Lorg/jsoup/parser/ParseErrorList;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    return-object v0
.end method

.method public b()Lorg/jsoup/parser/k;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/jsoup/parser/f;->b()Lorg/jsoup/parser/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/k;->g(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    invoke-virtual {v0}, Lorg/jsoup/parser/ParseErrorList;->b()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Lorg/jsoup/parser/f;
    .locals 1

    new-instance v0, Lorg/jsoup/parser/f;

    invoke-direct {v0, p0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/f;)V

    return-object v0
.end method

.method public k(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jsoup/nodes/k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    invoke-virtual {v0, p1, p2, p3, p0}, Lorg/jsoup/parser/k;->j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/f;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/io/Reader;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    invoke-virtual {v0, p1, p2, p0}, Lorg/jsoup/parser/k;->i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 2

    iget-object v0, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p0}, Lorg/jsoup/parser/k;->i(Ljava/io/Reader;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Lorg/jsoup/parser/f;
    .locals 0

    if-lez p1, :cond_0

    invoke-static {p1}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/jsoup/parser/ParseErrorList;->noTracking()Lorg/jsoup/parser/ParseErrorList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/f;->b:Lorg/jsoup/parser/ParseErrorList;

    return-object p0
.end method

.method public p(Lorg/jsoup/parser/k;)Lorg/jsoup/parser/f;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jsoup/parser/f;->a:Lorg/jsoup/parser/k;

    .line 2
    iput-object p0, p1, Lorg/jsoup/parser/k;->a:Lorg/jsoup/parser/f;

    return-object p0
.end method

.method public q()Lorg/jsoup/parser/e;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/f;->c:Lorg/jsoup/parser/e;

    return-object v0
.end method

.method public r(Lorg/jsoup/parser/e;)Lorg/jsoup/parser/f;
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/f;->c:Lorg/jsoup/parser/e;

    return-object p0
.end method
