.class public final Lshaded/org/apache/commons/codec/language/bm/c$d;
.super Lshaded/org/apache/commons/codec/language/bm/c$c;
.source "Languages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/bm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lshaded/org/apache/commons/codec/language/bm/c$c;-><init>()V

    .line 3
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lshaded/org/apache/commons/codec/language/bm/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/c$d;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 2

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public f(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 2

    .line 1
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->d:Lshaded/org/apache/commons/codec/language/bm/c$c;

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    if-ne p1, v0, :cond_1

    return-object p1

    .line 3
    :cond_1
    check-cast p1, Lshaded/org/apache/commons/codec/language/bm/c$d;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    iget-object p1, p1, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {v0}, Lshaded/org/apache/commons/codec/language/bm/c$c;->b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object p1

    return-object p1
.end method

.method public g(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;
    .locals 4

    .line 1
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->d:Lshaded/org/apache/commons/codec/language/bm/c$c;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Lshaded/org/apache/commons/codec/language/bm/c;->e:Lshaded/org/apache/commons/codec/language/bm/c$c;

    if-ne p1, v0, :cond_1

    return-object p0

    .line 3
    :cond_1
    check-cast p1, Lshaded/org/apache/commons/codec/language/bm/c$d;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object v2, p1, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p1, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v0}, Lshaded/org/apache/commons/codec/language/bm/c$c;->b(Ljava/util/Set;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Languages("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/c$d;->a:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
