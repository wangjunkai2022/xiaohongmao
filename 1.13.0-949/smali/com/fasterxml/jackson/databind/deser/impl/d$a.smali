.class public Lcom/fasterxml/jackson/databind/deser/impl/d$a;
.super Ljava/lang/Object;
.source "ExternalTypeHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/impl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/fasterxml/jackson/databind/JavaType;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/fasterxml/jackson/databind/deser/impl/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->c:Ljava/util/Map;

    .line 4
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/JavaType;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 7
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->c:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->b:Ljava/util/List;

    new-instance v2, Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    invoke-direct {v2, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/b;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/b;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public c(Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;)Lcom/fasterxml/jackson/databind/deser/impl/d;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-array v3, v0, [Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fasterxml/jackson/databind/deser/impl/d$b;

    .line 4
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->d()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 6
    invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/d$b;->g(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V

    .line 7
    :cond_0
    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p1, Lcom/fasterxml/jackson/databind/deser/impl/d;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/impl/d$a;->c:Ljava/util/Map;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/deser/impl/d;-><init>(Lcom/fasterxml/jackson/databind/JavaType;[Lcom/fasterxml/jackson/databind/deser/impl/d$b;Ljava/util/Map;[Ljava/lang/String;[Lcom/fasterxml/jackson/databind/util/t;)V

    return-object p1
.end method
