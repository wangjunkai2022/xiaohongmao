.class public Lorg/jsoup/a;
.super Ljava/lang/Object;
.source "Jsoup.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/a;->v(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/jsoup/safety/a;

    invoke-direct {p1, p2}, Lorg/jsoup/safety/a;-><init>(Lorg/jsoup/safety/b;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/jsoup/safety/a;->c(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->t1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/b;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/jsoup/a;->v(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/jsoup/safety/a;

    invoke-direct {p1, p2}, Lorg/jsoup/safety/a;-><init>(Lorg/jsoup/safety/b;)V

    .line 3
    invoke-virtual {p1, p0}, Lorg/jsoup/safety/a;->c(Lorg/jsoup/nodes/Document;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    .line 4
    invoke-virtual {p0, p3}, Lorg/jsoup/nodes/Document;->L2(Lorg/jsoup/nodes/Document$OutputSettings;)Lorg/jsoup/nodes/Document;

    .line 5
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->u2()Lorg/jsoup/nodes/g;

    move-result-object p0

    invoke-virtual {p0}, Lorg/jsoup/nodes/g;->t1()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/c;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jsoup/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/c;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/a;->b(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/b;Lorg/jsoup/nodes/Document$OutputSettings;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lorg/jsoup/safety/b;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lorg/jsoup/a;->a(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/safety/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/String;Lorg/jsoup/safety/c;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/jsoup/a;->e(Ljava/lang/String;Lorg/jsoup/safety/b;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Lorg/jsoup/Connection;
    .locals 0

    invoke-static {p0}, Lorg/jsoup/helper/c;->N(Ljava/lang/String;)Lorg/jsoup/Connection;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljava/lang/String;Lorg/jsoup/safety/b;)Z
    .locals 1

    new-instance v0, Lorg/jsoup/safety/a;

    invoke-direct {v0, p1}, Lorg/jsoup/safety/a;-><init>(Lorg/jsoup/safety/b;)V

    invoke-virtual {v0, p0}, Lorg/jsoup/safety/a;->g(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static i(Ljava/lang/String;Lorg/jsoup/safety/c;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1}, Lorg/jsoup/a;->h(Ljava/lang/String;Lorg/jsoup/safety/b;)Z

    move-result p0

    return p0
.end method

.method public static j()Lorg/jsoup/Connection;
    .locals 1

    new-instance v0, Lorg/jsoup/helper/c;

    invoke-direct {v0}, Lorg/jsoup/helper/c;-><init>()V

    return-object v0
.end method

.method public static k(Ljava/io/File;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jsoup/helper/b;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/b;->e(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/b;->f(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/jsoup/helper/b;->g(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lr7/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lorg/jsoup/helper/b;->h(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/f;->g(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/f;->g(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static r(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-virtual {p2, p0, p1}, Lorg/jsoup/parser/f;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static s(Ljava/lang/String;Lorg/jsoup/parser/f;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lorg/jsoup/parser/f;->m(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static t(Ljava/net/URL;I)Lorg/jsoup/nodes/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/c;->O(Ljava/net/URL;)Lorg/jsoup/Connection;

    move-result-object p0

    .line 2
    invoke-interface {p0, p1}, Lorg/jsoup/Connection;->d(I)Lorg/jsoup/Connection;

    .line 3
    invoke-interface {p0}, Lorg/jsoup/Connection;->get()Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Lorg/jsoup/parser/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;
    .locals 0

    invoke-static {p0, p1}, Lorg/jsoup/parser/f;->h(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object p0

    return-object p0
.end method
