.class public Lorg/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/util/Collection;Ljava/util/Collection;)Lorg/jsoup/select/Elements;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jsoup/nodes/g;",
            ">;",
            "Ljava/util/Collection<",
            "Lorg/jsoup/nodes/g;",
            ">;)",
            "Lorg/jsoup/select/Elements;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/g;

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/nodes/g;

    .line 4
    invoke-virtual {v1, v4}, Lorg/jsoup/nodes/k;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Iterable;)Lorg/jsoup/select/Elements;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lorg/jsoup/nodes/g;",
            ">;)",
            "Lorg/jsoup/select/Elements;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0}, Lorg/jsoup/select/f;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object p0

    .line 4
    new-instance v0, Lorg/jsoup/select/Elements;

    invoke-direct {v0}, Lorg/jsoup/select/Elements;-><init>()V

    .line 5
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/g;

    .line 7
    invoke-static {p0, v2}, Lorg/jsoup/select/Selector;->d(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/nodes/g;

    .line 9
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 10
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static c(Ljava/lang/String;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lorg/jsoup/select/f;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/select/Selector;->d(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 2
    invoke-static {p1}, Lorg/jsoup/helper/d;->j(Ljava/lang/Object;)V

    .line 3
    invoke-static {p0, p1}, Lorg/jsoup/select/a;->a(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/lang/String;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;
    .locals 0
    .annotation runtime Lr7/h;
    .end annotation

    .line 1
    invoke-static {p0}, Lorg/jsoup/helper/d;->h(Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Lorg/jsoup/select/f;->t(Ljava/lang/String;)Lorg/jsoup/select/c;

    move-result-object p0

    invoke-static {p0, p1}, Lorg/jsoup/select/a;->b(Lorg/jsoup/select/c;Lorg/jsoup/nodes/g;)Lorg/jsoup/nodes/g;

    move-result-object p0

    return-object p0
.end method
