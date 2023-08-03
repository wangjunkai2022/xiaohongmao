.class public Lcom/fasterxml/jackson/databind/introspect/j;
.super Lcom/fasterxml/jackson/databind/b;
.source "BasicBeanDescription.java"


# static fields
.field private static final j:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field protected final b:Lcom/fasterxml/jackson/databind/introspect/q;

.field protected final c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;"
        }
    .end annotation
.end field

.field protected final d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final e:Lcom/fasterxml/jackson/databind/introspect/c;

.field protected f:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected g:Z

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Lcom/fasterxml/jackson/databind/introspect/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/fasterxml/jackson/databind/introspect/j;->j:[Ljava/lang/Class;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/b;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    const/4 p2, 0x0

    .line 8
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    .line 9
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez p1, :cond_0

    .line 10
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 12
    :goto_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 13
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/j;->h:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/q;)V
    .locals 2

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->Q()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->G()Lcom/fasterxml/jackson/databind/introspect/c;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)V

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->N()Lcom/fasterxml/jackson/databind/introspect/p;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->i:Lcom/fasterxml/jackson/databind/introspect/p;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/q;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/b;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/q;->H()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    .line 6
    :goto_0
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    return-void
.end method

.method public static T(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/j;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;)V

    return-object v0
.end method

.method public static U(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/j;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/j;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/util/List;)V

    return-object v0
.end method

.method public static V(Lcom/fasterxml/jackson/databind/introspect/q;)Lcom/fasterxml/jackson/databind/introspect/j;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/j;

    invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/j;-><init>(Lcom/fasterxml/jackson/databind/introspect/q;)V

    return-object v0
.end method


# virtual methods
.method public A()Lcom/fasterxml/jackson/databind/introspect/c;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    return-object v0
.end method

.method public B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->o()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 6
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v3, v4, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v3

    .line 7
    sget-object v4, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v2, v3}, Lcom/fasterxml/jackson/databind/introspect/b;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public D()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->q()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 4
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/j;->X(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public E()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->q()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 5
    invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/introspect/j;->R(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object v2

    if-eqz v2, :cond_1

    if-nez v1, :cond_2

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_4
    return-object v1
.end method

.method public F()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->I()Ljava/util/Set;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public G()Lcom/fasterxml/jackson/databind/introspect/p;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->i:Lcom/fasterxml/jackson/databind/introspect/p;

    return-object v0
.end method

.method public I()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->u()Z

    move-result v0

    return v0
.end method

.method public J(Z)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->OVERRIDE_PUBLIC_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->fixAccess(Z)V

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->t0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 7
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->v0(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate bean of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 9
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/c;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public L(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/b;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->resolveMemberType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected M(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/util/h;

    if-eqz v1, :cond_1

    .line 2
    check-cast p1, Lcom/fasterxml/jackson/databind/util/h;

    return-object p1

    .line 3
    :cond_1
    instance-of v1, p1, Ljava/lang/Class;

    if-eqz v1, :cond_7

    .line 4
    check-cast p1, Ljava/lang/Class;

    .line 5
    const-class v1, Lcom/fasterxml/jackson/databind/util/h$a;

    if-eq p1, v1, :cond_6

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/g;->T(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    const-class v1, Lcom/fasterxml/jackson/databind/util/h;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/c;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v1, v0, v2, p1}, Lcom/fasterxml/jackson/databind/cfg/c;->a(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/h;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    .line 10
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z

    move-result v0

    .line 11
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/g;->n(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/util/h;

    :cond_4
    return-object v0

    .line 12
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected Class<Converter>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_1
    return-object v0

    .line 14
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnnotationIntrospector returned Converter definition of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type Converter or Class<Converter> instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected N(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findImplicitPropertyName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public O(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 3
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->l()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method protected P()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->O()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->h:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->h:Ljava/util/List;

    return-object v0
.end method

.method public Q(Lcom/fasterxml/jackson/databind/introspect/k;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/k;->getFullName()Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->W(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected R(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/introspect/b;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/b<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;",
            "Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0, v2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-ne v0, v2, :cond_1

    return-object v1

    .line 5
    :cond_1
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/b;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "valueOf"

    .line 7
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 9
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/b;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v3, "fromString"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    if-ne v2, v4, :cond_5

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v2

    .line 13
    const-class v3, Ljava/lang/String;

    if-eq v2, v3, :cond_4

    const-class v3, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 14
    :cond_4
    invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/b;->a(Lcom/fasterxml/jackson/databind/introspect/a;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/introspect/b;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
.end method

.method public S(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/k;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 2
    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/introspect/k;->x(Lcom/fasterxml/jackson/databind/PropertyName;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public W(Lcom/fasterxml/jackson/databind/PropertyName;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/j;->S(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/introspect/k;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected X(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/b;->y()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    invoke-virtual {v0, v2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findCreatorAnnotation(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;->DISABLED:Lcom/fasterxml/jackson/annotation/JsonCreator$Mode;

    if-eq v0, v3, :cond_1

    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "valueOf"

    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v3

    if-ne v3, v2, :cond_2

    return v2

    :cond_2
    const-string v3, "fromString"

    .line 8
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 10
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object p1

    .line 11
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    return v2

    :cond_4
    return v1
.end method

.method public Y(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 4
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a()Lcom/fasterxml/jackson/databind/type/TypeBindings;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/b;->a:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getBindings()Lcom/fasterxml/jackson/databind/type/TypeBindings;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->D()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 4
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    .line 5
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Invalid \'any-getter\' annotation on method %s(): return type is not instance of java.util.Map"

    .line 7
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->C()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 10
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v0

    .line 11
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Invalid \'any-getter\' annotation on field \'%s\': type is not instance of java.util.Map"

    .line 13
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-eqz v0, :cond_4

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->F()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 4
    const-class v4, Ljava/lang/String;

    if-eq v3, v4, :cond_1

    const-class v4, Ljava/lang/Object;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const-string v0, "Invalid \'any-setter\' annotation on method \'%s()\': first argument not of type String or Object, but %s"

    .line 7
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    :goto_0
    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->E()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getRawType()Ljava/lang/Class;

    move-result-object v3

    .line 10
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 11
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/a;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "Invalid \'any-setter\' annotation on field \'%s\': type is not instance of java.util.Map"

    .line 13
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->g()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/k;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/k;->o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public g()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fasterxml/jackson/databind/introspect/k;

    .line 2
    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/k;->f()Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->d()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->b()Ljava/lang/String;

    move-result-object v4

    if-nez v1, :cond_2

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 7
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 9
    :goto_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple back-reference properties with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/fasterxml/jackson/databind/util/g;->h0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v1
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 2
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findClassDescription(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public i()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->g:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->g:Z

    .line 3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 4
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findViews(Lcom/fasterxml/jackson/databind/introspect/a;)[Ljava/lang/Class;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v0, Lcom/fasterxml/jackson/databind/introspect/j;->j:[Ljava/lang/Class;

    .line 7
    :cond_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->f:[Ljava/lang/Class;

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->f:[Ljava/lang/Class;

    return-object v0
.end method

.method public k()Lcom/fasterxml/jackson/databind/util/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->M(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/h;

    move-result-object v0

    return-object v0
.end method

.method public l(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->c:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/c;->getRawType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultPropertyFormat(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    move-object p1, v0

    goto :goto_1

    .line 5
    :cond_2
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object p1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public varargs m([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->q()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    .line 2
    invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/j;->X(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 4
    array-length v4, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p1, v2

    .line 5
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public n()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->J()Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->K()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public p()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->L()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public q()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->b:Lcom/fasterxml/jackson/databind/introspect/q;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/q;->M()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/c;->l(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    move-result-object p1

    return-object p1
.end method

.method public s()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 2
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/c;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public t()Lc2/e$a;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    .line 2
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/c;)Lc2/e$a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public u()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/j;->P()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public v(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyInclusion(Lcom/fasterxml/jackson/databind/introspect/a;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/annotation/JsonInclude$Value;->withOverrides(Lcom/fasterxml/jackson/annotation/JsonInclude$Value;)Lcom/fasterxml/jackson/annotation/JsonInclude$Value;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    return-object p1
.end method

.method public w()Lcom/fasterxml/jackson/databind/util/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fasterxml/jackson/databind/util/h<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->d:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/a;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/j;->M(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/h;

    move-result-object v0

    return-object v0
.end method

.method public varargs x([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;

    .line 2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 4
    array-length v4, p1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, p1, v2

    if-ne v5, v3, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public z()Lcom/fasterxml/jackson/databind/util/a;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/j;->e:Lcom/fasterxml/jackson/databind/introspect/c;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/c;->n()Lcom/fasterxml/jackson/databind/util/a;

    move-result-object v0

    return-object v0
.end method
