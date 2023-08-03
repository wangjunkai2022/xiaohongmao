.class public Lorg/jsoup/safety/a;
.super Ljava/lang/Object;
.source "Cleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/a$c;,
        Lorg/jsoup/safety/a$b;
    }
.end annotation


# instance fields
.field private final a:Lorg/jsoup/safety/b;


# direct methods
.method public constructor <init>(Lorg/jsoup/safety/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, Lorg/jsoup/safety/a;->a:Lorg/jsoup/safety/b;

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/c;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 6
    iput-object p1, p0, Lorg/jsoup/safety/a;->a:Lorg/jsoup/safety/b;

    return-void
.end method

.method static synthetic a(Lorg/jsoup/safety/a;)Lorg/jsoup/safety/b;
    .locals 0

    iget-object p0, p0, Lorg/jsoup/safety/a;->a:Lorg/jsoup/safety/b;

    return-object p0
.end method

.method static synthetic b(Lorg/jsoup/safety/a;Lorg/jsoup/nodes/g;)Lorg/jsoup/safety/a$c;
    .locals 0

    invoke-direct {p0, p1}, Lorg/jsoup/safety/a;->e(Lorg/jsoup/nodes/g;)Lorg/jsoup/safety/a$c;

    move-result-object p0

    return-object p0
.end method

.method private d(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)I
    .locals 2

    .line 1
    new-instance v0, Lorg/jsoup/safety/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lorg/jsoup/safety/a$b;-><init>(Lorg/jsoup/safety/a;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;Lorg/jsoup/safety/a$a;)V

    .line 2
    invoke-static {v0, p1}, Lorg/jsoup/select/d;->c(Lorg/jsoup/select/e;Lorg/jsoup/nodes/k;)V

    .line 3
    invoke-static {v0}, Lorg/jsoup/safety/a$b;->c(Lorg/jsoup/safety/a$b;)I

    move-result p1

    return p1
.end method

.method private e(Lorg/jsoup/nodes/g;)Lorg/jsoup/safety/a$c;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->j2()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lorg/jsoup/nodes/b;

    invoke-direct {v1}, Lorg/jsoup/nodes/b;-><init>()V

    .line 3
    new-instance v2, Lorg/jsoup/nodes/g;

    invoke-static {v0}, Lorg/jsoup/parser/g;->p(Ljava/lang/String;)Lorg/jsoup/parser/g;

    move-result-object v3

    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lorg/jsoup/nodes/g;-><init>(Lorg/jsoup/parser/g;Ljava/lang/String;Lorg/jsoup/nodes/b;)V

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->i()Lorg/jsoup/nodes/b;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lorg/jsoup/nodes/b;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/nodes/a;

    .line 6
    iget-object v6, p0, Lorg/jsoup/safety/a;->a:Lorg/jsoup/safety/b;

    invoke-virtual {v6, v0, p1, v5}, Lorg/jsoup/safety/b;->h(Ljava/lang/String;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7
    invoke-virtual {v1, v5}, Lorg/jsoup/nodes/b;->G(Lorg/jsoup/nodes/a;)Lorg/jsoup/nodes/b;

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lorg/jsoup/safety/a;->a:Lorg/jsoup/safety/b;

    invoke-virtual {p1, v0}, Lorg/jsoup/safety/b;->g(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object p1

    .line 9
    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/b;->f(Lorg/jsoup/nodes/b;)V

    .line 10
    new-instance p1, Lorg/jsoup/safety/a$c;

    invoke-direct {p1, v2, v4}, Lorg/jsoup/safety/a$c;-><init>(Lorg/jsoup/nodes/g;I)V

    return-object p1
.end method


# virtual methods
.method public c(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;
    .locals 3

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/Document;->B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/jsoup/safety/a;->d(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)I

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document$OutputSettings;->d()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document;->L2(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;

    return-object v0
.end method

.method public f(Lorg/jsoup/nodes/Document;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p1}, Lorg/jsoup/nodes/g;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/Document;->B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lorg/jsoup/safety/a;->d(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->E2()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/k;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 6

    const-string v0, ""

    .line 1
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    .line 2
    invoke-static {v0}, Lorg/jsoup/nodes/Document;->B2(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v2

    const/4 v3, 0x1

    .line 3
    invoke-static {v3}, Lorg/jsoup/parser/ParseErrorList;->tracking(I)Lorg/jsoup/parser/ParseErrorList;

    move-result-object v4

    .line 4
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v5

    invoke-static {p1, v5, v0, v4}, Lorg/jsoup/parser/f;->j(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/String;Lorg/jsoup/parser/ParseErrorList;)Ljava/util/List;

    move-result-object p1

    .line 5
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, p1}, Lorg/jsoup/nodes/g;->y1(ILjava/util/Collection;)Lorg/jsoup/nodes/g;

    .line 6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object p1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jsoup/safety/a;->d(Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/g;)I

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method
