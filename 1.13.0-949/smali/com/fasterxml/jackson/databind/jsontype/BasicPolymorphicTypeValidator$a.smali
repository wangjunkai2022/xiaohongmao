.class public Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
.super Ljava/lang/Object;
.source "BasicPolymorphicTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected b(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->d:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public d(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$a;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$a;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$c;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$c;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/util/regex/Pattern;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$b;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$b;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$d;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$d;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$f;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/util/regex/Pattern;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$e;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$e;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;Ljava/util/regex/Pattern;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object p1

    return-object p1
.end method

.method public l()Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$g;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a$g;-><init>(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;)V

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b(Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;
    .locals 7

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a:Ljava/util/Set;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->b:Ljava/util/List;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    new-array v5, v4, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    .line 2
    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    :goto_0
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->c:Ljava/util/List;

    if-nez v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    new-array v6, v4, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;

    .line 3
    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;

    :goto_1
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->d:Ljava/util/List;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    new-array v3, v4, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    .line 4
    invoke-interface {v6, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;

    :goto_2
    invoke-direct {v0, v1, v2, v5, v3}, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator;-><init>(Ljava/util/Set;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$b;[Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$c;)V

    return-object v0
.end method

.method public n(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a:Ljava/util/Set;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/BasicPolymorphicTypeValidator$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
