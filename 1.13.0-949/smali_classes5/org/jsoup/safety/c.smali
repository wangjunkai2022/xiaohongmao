.class public Lorg/jsoup/safety/c;
.super Lorg/jsoup/safety/b;
.source "Whitelist.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/jsoup/safety/b;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/jsoup/safety/b;-><init>(Lorg/jsoup/safety/b;)V

    return-void
.end method

.method public static B()Lorg/jsoup/safety/c;
    .locals 2

    new-instance v0, Lorg/jsoup/safety/c;

    invoke-static {}, Lorg/jsoup/safety/b;->m()Lorg/jsoup/safety/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/c;-><init>(Lorg/jsoup/safety/b;)V

    return-object v0
.end method

.method public static G()Lorg/jsoup/safety/c;
    .locals 2

    new-instance v0, Lorg/jsoup/safety/c;

    invoke-static {}, Lorg/jsoup/safety/b;->r()Lorg/jsoup/safety/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/c;-><init>(Lorg/jsoup/safety/b;)V

    return-object v0
.end method

.method public static x()Lorg/jsoup/safety/c;
    .locals 2

    new-instance v0, Lorg/jsoup/safety/c;

    invoke-static {}, Lorg/jsoup/safety/b;->e()Lorg/jsoup/safety/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/c;-><init>(Lorg/jsoup/safety/b;)V

    return-object v0
.end method

.method public static y()Lorg/jsoup/safety/c;
    .locals 2

    new-instance v0, Lorg/jsoup/safety/c;

    invoke-static {}, Lorg/jsoup/safety/b;->f()Lorg/jsoup/safety/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/c;-><init>(Lorg/jsoup/safety/b;)V

    return-object v0
.end method

.method public static z()Lorg/jsoup/safety/c;
    .locals 2

    new-instance v0, Lorg/jsoup/safety/c;

    invoke-static {}, Lorg/jsoup/safety/b;->k()Lorg/jsoup/safety/b;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/safety/c;-><init>(Lorg/jsoup/safety/b;)V

    return-object v0
.end method


# virtual methods
.method public A(Z)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/safety/b;->l(Z)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public varargs C(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/b;->n(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public D(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/b;->o(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public varargs E(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/b;->p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public varargs F([Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/safety/b;->q([Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/c;->t(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/c;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/c;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic d([Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/safety/c;->w([Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method g(Ljava/lang/String;)Lorg/jsoup/nodes/b;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/safety/b;->g(Ljava/lang/String;)Lorg/jsoup/nodes/b;

    move-result-object p1

    return-object p1
.end method

.method protected h(Ljava/lang/String;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/b;->h(Ljava/lang/String;Lorg/jsoup/nodes/g;Lorg/jsoup/nodes/a;)Z

    move-result p1

    return p1
.end method

.method protected i(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/safety/b;->i(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic l(Z)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/safety/c;->A(Z)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic n(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/c;->C(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic o(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/safety/c;->D(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/safety/c;->E(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic q([Ljava/lang/String;)Lorg/jsoup/safety/b;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/jsoup/safety/c;->F([Ljava/lang/String;)Lorg/jsoup/safety/c;

    move-result-object p1

    return-object p1
.end method

.method public varargs t(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2}, Lorg/jsoup/safety/b;->a(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lorg/jsoup/safety/b;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method

.method public varargs w([Ljava/lang/String;)Lorg/jsoup/safety/c;
    .locals 0

    invoke-super {p0, p1}, Lorg/jsoup/safety/b;->d([Ljava/lang/String;)Lorg/jsoup/safety/b;

    return-object p0
.end method
