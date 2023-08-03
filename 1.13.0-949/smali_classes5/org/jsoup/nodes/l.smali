.class final Lorg/jsoup/nodes/l;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lorg/jsoup/nodes/k;)Lorg/jsoup/nodes/Document$OutputSettings;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Lorg/jsoup/nodes/Document;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->K2()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    return-object p0
.end method

.method static b(Lorg/jsoup/nodes/k;)Lorg/jsoup/parser/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/jsoup/nodes/k;->N()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->N2()Lorg/jsoup/parser/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->N2()Lorg/jsoup/parser/f;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jsoup/parser/f;

    new-instance v0, Lorg/jsoup/parser/b;

    invoke-direct {v0}, Lorg/jsoup/parser/b;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/f;-><init>(Lorg/jsoup/parser/k;)V

    :goto_0
    return-object p0
.end method

.method static c(Ljava/lang/String;Lorg/jsoup/nodes/g;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/jsoup/nodes/k;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/jsoup/nodes/g;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    invoke-static {p2}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lorg/jsoup/helper/e;

    invoke-direct {v0}, Lorg/jsoup/helper/e;-><init>()V

    .line 5
    invoke-virtual {v0, p1}, Lorg/jsoup/helper/e;->i(Lorg/jsoup/nodes/g;)Lorg/w3c/dom/Document;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p0, p1}, Lorg/jsoup/helper/e;->l(Ljava/lang/String;Lorg/w3c/dom/Document;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 7
    invoke-virtual {v0, p0, p2}, Lorg/jsoup/helper/e;->m(Lorg/w3c/dom/NodeList;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
