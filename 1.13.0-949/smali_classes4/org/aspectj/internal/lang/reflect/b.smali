.class public Lorg/aspectj/internal/lang/reflect/b;
.super Ljava/lang/Object;
.source "AjTypeImpl.java"

# interfaces
.implements Lk8/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lk8/c<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String; = "ajc$"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:[Lk8/v;

.field private c:[Lk8/v;

.field private d:[Lk8/a;

.field private e:[Lk8/a;

.field private f:[Lk8/q;

.field private g:[Lk8/q;

.field private h:[Lk8/p;

.field private i:[Lk8/p;

.field private j:[Lk8/n;

.field private k:[Lk8/n;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->b:[Lk8/v;

    .line 3
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->c:[Lk8/v;

    .line 4
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    .line 5
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    .line 6
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->f:[Lk8/q;

    .line 7
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->g:[Lk8/q;

    .line 8
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->h:[Lk8/p;

    .line 9
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->i:[Lk8/p;

    .line 10
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->j:[Lk8/n;

    .line 11
    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->k:[Lk8/n;

    .line 12
    iput-object p1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    return-void
.end method

.method private c0(Ljava/util/List;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk8/q;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_3

    .line 4
    :cond_0
    const-class v5, Li8/k;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5
    const-class v5, Li8/k;

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Li8/k;

    .line 7
    invoke-interface {v6}, Li8/k;->defaultImpl()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, v5, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    .line 9
    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v9

    invoke-static {v9}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    new-instance v9, Lorg/aspectj/internal/lang/reflect/k;

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {v9, p0, v10, v8, v11}, Lorg/aspectj/internal/lang/reflect/k;-><init>(Lk8/c;Lk8/c;Ljava/lang/reflect/Method;I)V

    .line 11
    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private d0(Ljava/lang/reflect/Method;)Lk8/a;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    const-class v0, Li8/g;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/g;

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lorg/aspectj/internal/lang/reflect/a;

    invoke-interface {v0}, Li8/g;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->BEFORE:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    return-object v1

    .line 4
    :cond_1
    const-class v0, Li8/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/b;

    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Lorg/aspectj/internal/lang/reflect/a;

    invoke-interface {v0}, Li8/b;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    return-object v1

    .line 6
    :cond_2
    const-class v0, Li8/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/c;

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {v0}, Li8/c;->pointcut()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 8
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Li8/c;->value()Ljava/lang/String;

    move-result-object v1

    .line 9
    :cond_3
    new-instance v2, Lorg/aspectj/internal/lang/reflect/a;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_RETURNING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Li8/c;->returning()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    return-object v2

    .line 10
    :cond_4
    const-class v0, Li8/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/d;

    if-eqz v0, :cond_6

    .line 11
    invoke-interface {v0}, Li8/d;->pointcut()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 12
    invoke-interface {v0}, Li8/d;->value()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_5
    new-instance v2, Lorg/aspectj/internal/lang/reflect/a;

    sget-object v3, Lorg/aspectj/lang/reflect/AdviceKind;->AFTER_THROWING:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-interface {v0}, Li8/d;->throwing()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p1, v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;Ljava/lang/String;)V

    return-object v2

    .line 14
    :cond_6
    const-class v0, Li8/e;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/e;

    if-eqz v0, :cond_7

    .line 15
    new-instance v1, Lorg/aspectj/internal/lang/reflect/a;

    invoke-interface {v0}, Li8/e;->value()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/aspectj/lang/reflect/AdviceKind;->AROUND:Lorg/aspectj/lang/reflect/AdviceKind;

    invoke-direct {v1, p1, v0, v2}, Lorg/aspectj/internal/lang/reflect/a;-><init>(Ljava/lang/reflect/Method;Ljava/lang/String;Lorg/aspectj/lang/reflect/AdviceKind;)V

    :cond_7
    return-object v1
.end method

.method private e0(Ljava/lang/reflect/Method;)Lk8/v;
    .locals 8

    .line 1
    const-class v0, Li8/n;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/n;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ajc$"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "$$"

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "$"

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v1

    .line 8
    new-instance v1, Lorg/aspectj/internal/lang/reflect/o;

    invoke-interface {v0}, Li8/n;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object v6

    invoke-interface {v0}, Li8/n;->argNames()Ljava/lang/String;

    move-result-object v7

    move-object v2, v1

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lorg/aspectj/internal/lang/reflect/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Method;Lk8/c;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private f(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk8/i;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    const-class v5, Li8/k;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isInterface()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    const-class v5, Li8/k;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Li8/k;

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 6
    new-instance v6, Lorg/aspectj/internal/lang/reflect/e;

    invoke-interface {v5}, Li8/k;->value()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4, v2, p0}, Lorg/aspectj/internal/lang/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V

    .line 7
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private f0(Ljava/util/Set;)[Lk8/a;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/b;->h0()V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4}, Lk8/a;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lk8/a;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private g(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lk8/p;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method private g0(Ljava/util/Set;)[Lk8/a;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/b;->i0()V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 4
    invoke-interface {v4}, Lk8/a;->getKind()Lorg/aspectj/lang/reflect/AdviceKind;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lk8/a;

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1
.end method

.method private h0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->d0(Ljava/lang/reflect/Method;)Lk8/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lk8/a;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private i0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->d0(Ljava/lang/reflect/Method;)Lk8/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lk8/a;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void
.end method

.method private j0(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajc$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    array-length v0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    const-class v0, Li8/n;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    const-class v0, Li8/g;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 5
    :cond_3
    const-class v0, Li8/b;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 6
    :cond_4
    const-class v0, Li8/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    .line 7
    :cond_5
    const-class v0, Li8/d;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    .line 8
    :cond_6
    const-class v0, Li8/e;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2
.end method

.method private k0([Ljava/lang/Class;)[Lk8/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)[",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    new-array v1, v0, [Lk8/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v3, p1, v2

    invoke-static {v3}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private l0([Lk8/c;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lk8/c<",
            "*>;)[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget-object v3, p1, v2

    invoke-interface {v3}, Lk8/c;->Z()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public A()[Lk8/p;
    .locals 15

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->i:[Lk8/p;

    if-nez v1, :cond_4

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lh8/f;

    .line 7
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ajc$interFieldInit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FieldInit"

    const-string v8, "FieldGetDispatch"

    .line 10
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 11
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 12
    new-instance v14, Lorg/aspectj/internal/lang/reflect/j;

    invoke-interface {v5}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v10

    invoke-interface {v5}, Lh8/f;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object v12

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v13

    move-object v7, v14

    move-object v8, p0

    invoke-direct/range {v7 .. v13}, Lorg/aspectj/internal/lang/reflect/j;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/String;Lk8/c;Ljava/lang/reflect/Type;)V

    .line 13
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 14
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find field get dispatch method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 15
    invoke-direct {p0, v0, v1}, Lorg/aspectj/internal/lang/reflect/b;->g(Ljava/util/List;Z)V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/p;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->i:[Lk8/p;

    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    :cond_4
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->i:[Lk8/p;

    return-object v0
.end method

.method public B()[Lk8/q;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->g:[Lk8/q;

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v9, v1, v3

    .line 5
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ajc$interMethod$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    const-class v4, Lh8/f;

    invoke-virtual {v9, v4}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    const-class v4, Lh8/f;

    invoke-virtual {v9, v4}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lh8/f;

    .line 8
    invoke-interface {v4}, Lh8/f;->modifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v10, Lorg/aspectj/internal/lang/reflect/k;

    invoke-interface {v4}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lh8/f;->modifiers()I

    move-result v7

    invoke-interface {v4}, Lh8/f;->name()Ljava/lang/String;

    move-result-object v8

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lorg/aspectj/internal/lang/reflect/k;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 10
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v0, v1}, Lorg/aspectj/internal/lang/reflect/b;->c0(Ljava/util/List;Z)V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/q;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->g:[Lk8/q;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 14
    :cond_4
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->g:[Lk8/q;

    return-object v0
.end method

.method public varargs C(Ljava/lang/String;Lk8/c;[Lk8/c;)Lk8/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk8/c<",
            "*>;[",
            "Lk8/c<",
            "*>;)",
            "Lk8/q;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->B()[Lk8/q;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4}, Lk8/q;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-interface {v4}, Lk8/o;->f()Lk8/c;

    move-result-object v5

    .line 5
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-interface {v4}, Lk8/q;->getParameterTypes()[Lk8/c;

    move-result-object v5

    .line 7
    array-length v6, v5

    array-length v7, p3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    .line 8
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 9
    aget-object v7, v5, v6

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/NoSuchMethodException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public D()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isLocalClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()[Lk8/i;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    const-class v5, Lh8/c;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    const-class v5, Lh8/c;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lh8/c;

    .line 5
    new-instance v5, Lorg/aspectj/internal/lang/reflect/e;

    invoke-interface {v4}, Lh8/c;->targetTypePattern()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lh8/c;->parentTypes()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lh8/c;->isExtends()Z

    move-result v4

    invoke-direct {v5, v6, v7, v4, p0}, Lorg/aspectj/internal/lang/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V

    .line 6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/b;->f(Ljava/util/List;)V

    .line 8
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->E()[Lk8/i;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/i;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public F()Lk8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lorg/aspectj/internal/lang/reflect/b;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/b;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public G()[Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->j0(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public varargs H([Lorg/aspectj/lang/reflect/AdviceKind;)[Lk8/a;
    .locals 2

    .line 1
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    array-length v1, p1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/b;->f0(Ljava/util/Set;)[Lk8/a;

    move-result-object p1

    return-object p1
.end method

.method public I()[Lk8/p;
    .locals 14

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->h:[Lk8/p;

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 4
    array-length v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_2

    aget-object v12, v8, v11

    .line 5
    const-class v0, Lh8/f;

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ajc$interFieldInit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    const-class v0, Lh8/f;

    invoke-virtual {v12, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lh8/f;

    .line 8
    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FieldInit"

    const-string v3, "FieldGetDispatch"

    .line 9
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 11
    new-instance v13, Lorg/aspectj/internal/lang/reflect/j;

    invoke-interface {v0}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lh8/f;->modifiers()I

    move-result v3

    invoke-interface {v0}, Lh8/f;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lk8/d;->a(Ljava/lang/Class;)Lk8/c;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v0, v13

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/aspectj/internal/lang/reflect/j;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/String;Lk8/c;Ljava/lang/reflect/Type;)V

    .line 12
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 13
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find field get dispatch method for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0, v7, v10}, Lorg/aspectj/internal/lang/reflect/b;->g(Ljava/util/List;Z)V

    .line 15
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lk8/p;

    iput-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->h:[Lk8/p;

    .line 16
    invoke-interface {v7, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 17
    :cond_3
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->h:[Lk8/p;

    return-object v0
.end method

.method public J(Ljava/lang/String;Lk8/c;)Lk8/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk8/c<",
            "*>;)",
            "Lk8/p;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->A()[Lk8/p;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lk8/p;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v3}, Lk8/o;->f()Lk8/c;

    move-result-object v4

    .line 5
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/NoSuchFieldException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public K()[Lk8/q;
    .locals 12

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->f:[Lk8/q;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v10, v1, v4

    .line 5
    invoke-virtual {v10}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$interMethodDispatch1$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    const-class v5, Lh8/f;

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    const-class v5, Lh8/f;

    invoke-virtual {v10, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lh8/f;

    .line 8
    new-instance v11, Lorg/aspectj/internal/lang/reflect/k;

    invoke-interface {v5}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v8

    invoke-interface {v5}, Lh8/f;->name()Ljava/lang/String;

    move-result-object v9

    move-object v5, v11

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lorg/aspectj/internal/lang/reflect/k;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/String;Ljava/lang/reflect/Method;)V

    .line 9
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, v0, v3}, Lorg/aspectj/internal/lang/reflect/b;->c0(Ljava/util/List;Z)V

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/q;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->f:[Lk8/q;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->f:[Lk8/q;

    return-object v0
.end method

.method public L(Ljava/lang/String;)Lk8/v;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->Y()[Lk8/v;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lk8/v;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs M(Ljava/lang/String;[Lk8/c;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lk8/c<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/b;->l0([Lk8/c;)[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/b;->j0(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/NoSuchMethodException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public N()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public O(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public P()Ljava/lang/reflect/Method;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public varargs Q(Ljava/lang/String;Lk8/c;[Lk8/c;)Lk8/q;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk8/c<",
            "*>;[",
            "Lk8/c<",
            "*>;)",
            "Lk8/q;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->K()[Lk8/q;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4}, Lk8/q;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    invoke-interface {v4}, Lk8/o;->f()Lk8/c;

    move-result-object v5

    .line 5
    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 6
    invoke-interface {v4}, Lk8/q;->getParameterTypes()[Lk8/c;

    move-result-object v5

    .line 7
    array-length v6, v5

    array-length v7, p3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    .line 8
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 9
    aget-object v7, v5, v6

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v4

    :catch_0
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_4
    new-instance p2, Ljava/lang/NoSuchMethodException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public R()[Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public S()Z
    .locals 2

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    const-class v1, Li8/f;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method public varargs U([Lk8/c;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lk8/c<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/b;->l0([Lk8/c;)[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method public V(Ljava/lang/String;)Lk8/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/b;->i0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->d:[Lk8/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Lk8/a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public W()Lk8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk8/c<",
            "-TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v1, Lorg/aspectj/internal/lang/reflect/b;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/b;-><init>(Ljava/lang/Class;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public X()Lk8/u;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    const-class v1, Li8/f;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Li8/f;

    .line 3
    invoke-interface {v0}, Li8/f;->value()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v0

    invoke-interface {v0}, Lk8/c;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v0

    invoke-interface {v0}, Lk8/c;->X()Lk8/u;

    move-result-object v0

    return-object v0

    .line 7
    :cond_0
    new-instance v0, Lorg/aspectj/internal/lang/reflect/l;

    sget-object v1, Lorg/aspectj/lang/reflect/PerClauseKind;->SINGLETON:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-direct {v0, v1}, Lorg/aspectj/internal/lang/reflect/l;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;)V

    return-object v0

    :cond_1
    const-string v1, "perthis("

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    new-instance v1, Lorg/aspectj/internal/lang/reflect/m;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTHIS:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/aspectj/internal/lang/reflect/m;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    return-object v1

    :cond_2
    const-string v1, "pertarget("

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    new-instance v1, Lorg/aspectj/internal/lang/reflect/m;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTARGET:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0xa

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/aspectj/internal/lang/reflect/m;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    return-object v1

    :cond_3
    const-string v1, "percflow("

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 13
    new-instance v1, Lorg/aspectj/internal/lang/reflect/m;

    sget-object v2, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    const/16 v3, 0x9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/aspectj/internal/lang/reflect/m;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    return-object v1

    :cond_4
    const-string v1, "percflowbelow("

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0xe

    if-eqz v1, :cond_5

    .line 15
    new-instance v1, Lorg/aspectj/internal/lang/reflect/m;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERCFLOWBELOW:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/m;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    return-object v1

    :cond_5
    const-string v1, "pertypewithin"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 17
    new-instance v1, Lorg/aspectj/internal/lang/reflect/r;

    sget-object v3, Lorg/aspectj/lang/reflect/PerClauseKind;->PERTYPEWITHIN:Lorg/aspectj/lang/reflect/PerClauseKind;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/aspectj/internal/lang/reflect/r;-><init>(Lorg/aspectj/lang/reflect/PerClauseKind;Ljava/lang/String;)V

    return-object v1

    .line 18
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Per-clause not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public Y()[Lk8/v;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->b:[Lk8/v;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->e0(Ljava/lang/reflect/Method;)Lk8/v;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/v;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->b:[Lk8/v;

    return-object v1
.end method

.method public Z()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a()Lk8/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lorg/aspectj/internal/lang/reflect/b;

    invoke-direct {v1, v0}, Lorg/aspectj/internal/lang/reflect/b;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public a0()[Lk8/h;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 3
    :try_start_0
    const-class v6, Li8/m;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 4
    const-class v6, Li8/m;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Li8/m;

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 6
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 7
    new-instance v7, Lorg/aspectj/internal/lang/reflect/d;

    invoke-interface {v6}, Li8/m;->value()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v5, v3, p0}, Lorg/aspectj/internal/lang/reflect/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V

    .line 8
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_0
    const-class v6, Li8/i;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 10
    const-class v6, Li8/i;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    check-cast v6, Li8/i;

    .line 11
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 13
    new-instance v7, Lorg/aspectj/internal/lang/reflect/d;

    invoke-interface {v6}, Li8/i;->value()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    invoke-direct {v7, v6, v5, v8, p0}, Lorg/aspectj/internal/lang/reflect/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V

    .line 14
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v4, v1, v3

    .line 16
    const-class v5, Lh8/b;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 17
    const-class v5, Lh8/b;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lh8/b;

    .line 18
    new-instance v5, Lorg/aspectj/internal/lang/reflect/d;

    invoke-interface {v4}, Lh8/b;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lh8/b;->message()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4}, Lh8/b;->isError()Z

    move-result v4

    invoke-direct {v5, v6, v7, v4, p0}, Lorg/aspectj/internal/lang/reflect/d;-><init>(Ljava/lang/String;Ljava/lang/String;ZLk8/c;)V

    .line 19
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 20
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/h;

    .line 21
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public b()[Lk8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/b;->k0([Ljava/lang/Class;)[Lk8/c;

    move-result-object v0

    return-object v0
.end method

.method public varargs b0(Ljava/lang/String;[Lk8/c;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lk8/c<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/b;->l0([Lk8/c;)[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 2
    invoke-direct {p0, p2}, Lorg/aspectj/internal/lang/reflect/b;->j0(Ljava/lang/reflect/Method;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Ljava/lang/NoSuchMethodException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public c(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ajc$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NoSuchFieldException;

    invoke-direct {v0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()[Lk8/n;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->j:[Lk8/n;

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$postInterConstructor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 7
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lh8/f;

    .line 8
    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance v6, Lorg/aspectj/internal/lang/reflect/h;

    invoke-interface {v5}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v5

    invoke-direct {v6, p0, v7, v5, v4}, Lorg/aspectj/internal/lang/reflect/h;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 10
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/n;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->j:[Lk8/n;

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 13
    :cond_4
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->j:[Lk8/n;

    return-object v0
.end method

.method public e()[Lk8/n;
    .locals 8

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->k:[Lk8/n;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$postInterConstructor"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    const-class v5, Lh8/f;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lh8/f;

    .line 8
    new-instance v6, Lorg/aspectj/internal/lang/reflect/h;

    invoke-interface {v5}, Lh8/f;->targetType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5}, Lh8/f;->modifiers()I

    move-result v5

    invoke-direct {v6, p0, v7, v5, v4}, Lorg/aspectj/internal/lang/reflect/h;-><init>(Lk8/c;Ljava/lang/String;ILjava/lang/reflect/Method;)V

    .line 9
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/n;

    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->k:[Lk8/n;

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->k:[Lk8/n;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lorg/aspectj/internal/lang/reflect/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    check-cast p1, Lorg/aspectj/internal/lang/reflect/b;

    .line 3
    iget-object p1, p1, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getConstructors()[Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getFields()[Ljava/lang/reflect/Field;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Li8/m;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Li8/i;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getMethods()[Ljava/lang/reflect/Method;
    .locals 6

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->j0(Ljava/lang/reflect/Method;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Method;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable<",
            "Ljava/lang/Class<",
            "TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v0

    return-object v0
.end method

.method public h()[Lorg/aspectj/lang/reflect/DeclareAnnotation;
    .locals 13

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_3

    aget-object v1, v7, v10

    .line 3
    const-class v2, Lh8/a;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    const-class v2, Lh8/a;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lh8/a;

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 6
    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    .line 7
    invoke-interface {v6}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lh8/a;

    if-eq v11, v12, :cond_0

    move-object v5, v6

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 8
    :goto_2
    new-instance v11, Lorg/aspectj/internal/lang/reflect/c;

    invoke-interface {v2}, Lh8/a;->kind()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lh8/a;->pattern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lh8/a;->annotation()Ljava/lang/String;

    move-result-object v6

    move-object v1, v11

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/aspectj/internal/lang/reflect/c;-><init>(Lk8/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/annotation/Annotation;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->S()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->h()[Lorg/aspectj/lang/reflect/DeclareAnnotation;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/aspectj/lang/reflect/DeclareAnnotation;

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()[Lk8/v;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->c:[Lk8/v;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 4
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 5
    invoke-direct {p0, v4}, Lorg/aspectj/internal/lang/reflect/b;->e0(Ljava/lang/reflect/Method;)Lk8/v;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/v;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9
    iput-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->c:[Lk8/v;

    return-object v1
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method public isArray()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    return v0
.end method

.method public isInstance(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isInterface()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    return v0
.end method

.method public isPrimitive()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public varargs k(Lk8/c;[Lk8/c;)Lk8/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c<",
            "*>;[",
            "Lk8/c<",
            "*>;)",
            "Lk8/n;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->e()[Lk8/n;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4}, Lk8/o;->f()Lk8/c;

    move-result-object v5

    .line 4
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {v4}, Lk8/n;->getParameterTypes()[Lk8/c;

    move-result-object v5

    .line 6
    array-length v6, v5

    array-length v7, p2

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    .line 7
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 8
    aget-object v7, v5, v6

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-object v4

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p1
.end method

.method public l(Ljava/lang/String;)Lk8/v;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->i()[Lk8/v;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lk8/v;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchPointcutException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchPointcutException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m(Ljava/lang/String;Lk8/c;)Lk8/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lk8/c<",
            "*>;)",
            "Lk8/p;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->I()[Lk8/p;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3
    invoke-interface {v3}, Lk8/p;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    :try_start_0
    invoke-interface {v3}, Lk8/o;->f()Lk8/c;

    move-result-object v4

    .line 5
    invoke-virtual {v4, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/NoSuchFieldException;

    invoke-direct {p2, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public n()[Lk8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/b;->k0([Ljava/lang/Class;)[Lk8/c;

    move-result-object v0

    return-object v0
.end method

.method public varargs o([Lorg/aspectj/lang/reflect/AdviceKind;)[Lk8/a;
    .locals 2

    .line 1
    const-class v0, Lorg/aspectj/lang/reflect/AdviceKind;

    array-length v1, p1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 4
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object p1, v0

    .line 5
    :goto_0
    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/b;->g0(Ljava/util/Set;)[Lk8/a;

    move-result-object p1

    return-object p1
.end method

.method public p()[Lk8/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lk8/c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lorg/aspectj/internal/lang/reflect/b;->k0([Ljava/lang/Class;)[Lk8/c;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()[Lk8/j;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    const-class v2, Li8/l;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    const-class v2, Li8/l;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Li8/l;

    .line 4
    new-instance v2, Lorg/aspectj/internal/lang/reflect/f;

    invoke-interface {v1}, Li8/l;->value()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, p0}, Lorg/aspectj/internal/lang/reflect/f;-><init>(Ljava/lang/String;Lk8/c;)V

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 7
    const-class v5, Lh8/d;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 8
    const-class v5, Lh8/d;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lh8/d;

    .line 9
    new-instance v5, Lorg/aspectj/internal/lang/reflect/f;

    invoke-interface {v4}, Lh8/d;->value()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, p0}, Lorg/aspectj/internal/lang/reflect/f;-><init>(Ljava/lang/String;Lk8/c;)V

    .line 10
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->S()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->r()[Lk8/j;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/j;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public s()[Ljava/lang/reflect/Field;
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ajc$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Li8/m;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    const-class v5, Li8/i;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 5
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/reflect/Field;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public t()[Lk8/k;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 3
    const-class v5, Lh8/e;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4
    const-class v5, Lh8/e;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lh8/e;

    .line 5
    new-instance v5, Lorg/aspectj/internal/lang/reflect/g;

    invoke-interface {v4}, Lh8/e;->pointcut()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lh8/e;->exceptionType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, p0, v6, v4}, Lorg/aspectj/internal/lang/reflect/g;-><init>(Lk8/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->S()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->W()Lk8/c;

    move-result-object v1

    invoke-interface {v1}, Lk8/c;->t()[Lk8/k;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 9
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lk8/k;

    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs u(Lk8/c;[Lk8/c;)Lk8/n;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk8/c<",
            "*>;[",
            "Lk8/c<",
            "*>;)",
            "Lk8/n;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->d()[Lk8/n;

    move-result-object v0

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3
    :try_start_0
    invoke-interface {v4}, Lk8/o;->f()Lk8/c;

    move-result-object v5

    .line 4
    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {v4}, Lk8/n;->getParameterTypes()[Lk8/c;

    move-result-object v5

    .line 6
    array-length v6, v5

    array-length v7, p2

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    .line 7
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 8
    aget-object v7, v5, v6

    aget-object v8, p2, v6

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    return-object v4

    :catch_0
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/NoSuchMethodException;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw p1
.end method

.method public v()Z
    .locals 2

    invoke-virtual {p0}, Lorg/aspectj/internal/lang/reflect/b;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    const-class v1, Lh8/g;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()Ljava/lang/reflect/Constructor;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method

.method public x(Ljava/lang/String;)Lk8/a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation

    const-string v0, ""

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/aspectj/internal/lang/reflect/b;->h0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->e:[Lk8/a;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 4
    invoke-interface {v3}, Lk8/a;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    new-instance v0, Lorg/aspectj/lang/reflect/NoSuchAdviceException;

    invoke-direct {v0, p1}, Lorg/aspectj/lang/reflect/NoSuchAdviceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "use getAdvice(AdviceType...) instead for un-named advice"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()Ljava/lang/Package;
    .locals 1

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    return-object v0
.end method

.method public varargs z([Lk8/c;)Ljava/lang/reflect/Constructor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lk8/c<",
            "*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    iget-object v0, p0, Lorg/aspectj/internal/lang/reflect/b;->a:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lorg/aspectj/internal/lang/reflect/b;->l0([Lk8/c;)[Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method
