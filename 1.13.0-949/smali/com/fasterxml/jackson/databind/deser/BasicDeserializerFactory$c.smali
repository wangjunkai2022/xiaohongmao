.class public Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;
.super Ljava/lang/Object;
.source "BasicDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/DeserializationContext;

.field public final b:Lcom/fasterxml/jackson/databind/b;

.field public final c:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lcom/fasterxml/jackson/databind/deser/impl/b;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:I


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/b;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/deser/impl/b;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/DeserializationContext;",
            "Lcom/fasterxml/jackson/databind/b;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/deser/impl/b;",
            "Ljava/util/Map<",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;",
            "[",
            "Lcom/fasterxml/jackson/databind/introspect/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->b:Lcom/fasterxml/jackson/databind/b;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->c:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->d:Lcom/fasterxml/jackson/databind/deser/impl/b;

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->e:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/fasterxml/jackson/databind/deser/impl/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->h:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->h:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/fasterxml/jackson/databind/deser/impl/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->f:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->f:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->a:Lcom/fasterxml/jackson/databind/DeserializationContext;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->i:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->g:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->f:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->i:I

    return-void
.end method

.method public k()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory$c;->g:I

    return-void
.end method
