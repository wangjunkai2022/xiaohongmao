.class final Lshaded/org/apache/commons/codec/language/bm/d$b;
.super Ljava/lang/Object;
.source "PhoneticEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/bm/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lshaded/org/apache/commons/codec/language/bm/f$k;",
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
            "Lshaded/org/apache/commons/codec/language/bm/f$k;",
            ">;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Lshaded/org/apache/commons/codec/language/bm/d$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lshaded/org/apache/commons/codec/language/bm/d$b;-><init>(Ljava/util/Set;)V

    return-void
.end method

.method private constructor <init>(Lshaded/org/apache/commons/codec/language/bm/f$k;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/d$b;
    .locals 3

    new-instance v0, Lshaded/org/apache/commons/codec/language/bm/d$b;

    new-instance v1, Lshaded/org/apache/commons/codec/language/bm/f$k;

    const-string v2, ""

    invoke-direct {v1, v2, p0}, Lshaded/org/apache/commons/codec/language/bm/f$k;-><init>(Ljava/lang/CharSequence;Lshaded/org/apache/commons/codec/language/bm/c$c;)V

    invoke-direct {v0, v1}, Lshaded/org/apache/commons/codec/language/bm/d$b;-><init>(Lshaded/org/apache/commons/codec/language/bm/f$k;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 2
    invoke-virtual {v1, p1}, Lshaded/org/apache/commons/codec/language/bm/f$k;->c(Ljava/lang/CharSequence;)Lshaded/org/apache/commons/codec/language/bm/f$k;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lshaded/org/apache/commons/codec/language/bm/f$l;I)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 2
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 3
    invoke-interface {p1}, Lshaded/org/apache/commons/codec/language/bm/f$l;->a()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 4
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/f$k;->d()Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v5

    invoke-virtual {v4}, Lshaded/org/apache/commons/codec/language/bm/f$k;->d()Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v6

    invoke-virtual {v5, v6}, Lshaded/org/apache/commons/codec/language/bm/c$c;->g(Lshaded/org/apache/commons/codec/language/bm/c$c;)Lshaded/org/apache/commons/codec/language/bm/c$c;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Lshaded/org/apache/commons/codec/language/bm/c$c;->d()Z

    move-result v6

    if-nez v6, :cond_1

    .line 6
    new-instance v6, Lshaded/org/apache/commons/codec/language/bm/f$k;

    invoke-direct {v6, v2, v4, v5}, Lshaded/org/apache/commons/codec/language/bm/f$k;-><init>(Lshaded/org/apache/commons/codec/language/bm/f$k;Lshaded/org/apache/commons/codec/language/bm/f$k;Lshaded/org/apache/commons/codec/language/bm/c$c;)V

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-ge v4, p2, :cond_1

    .line 8
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v4

    if-lt v4, p2, :cond_1

    .line 10
    :cond_2
    iget-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 11
    iget-object p1, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lshaded/org/apache/commons/codec/language/bm/f$k;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lshaded/org/apache/commons/codec/language/bm/d$b;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lshaded/org/apache/commons/codec/language/bm/f$k;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "|"

    .line 4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v2}, Lshaded/org/apache/commons/codec/language/bm/f$k;->e()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
