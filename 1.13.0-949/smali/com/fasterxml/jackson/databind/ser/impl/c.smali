.class public abstract Lcom/fasterxml/jackson/databind/ser/impl/c;
.super Ljava/lang/Object;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/c$c;,
        Lcom/fasterxml/jackson/databind/ser/impl/c$a;,
        Lcom/fasterxml/jackson/databind/ser/impl/c$e;,
        Lcom/fasterxml/jackson/databind/ser/impl/c$b;,
        Lcom/fasterxml/jackson/databind/ser/impl/c$f;,
        Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    }
.end annotation


# instance fields
.field protected final a:Z


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/ser/impl/c;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean p1, p1, Lcom/fasterxml/jackson/databind/ser/impl/c;->a:Z

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->a:Z

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/c;->a:Z

    return-void
.end method

.method public static c()Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;->b:Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    return-object v0
.end method

.method public static d()Lcom/fasterxml/jackson/databind/ser/impl/c;
    .locals 1

    sget-object v0, Lcom/fasterxml/jackson/databind/ser/impl/c$b;->c:Lcom/fasterxml/jackson/databind/ser/impl/c$b;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object v0
.end method

.method public final b(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object v0
.end method

.method public final e(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findKeySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object p3
.end method

.method public final f(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findPrimaryPropertySerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object p3
.end method

.method public final g(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findPrimaryPropertySerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object p3
.end method

.method public final h(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object v0
.end method

.method public final i(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/l;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object v0
.end method

.method public final j(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findContentValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object p3
.end method

.method public final k(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/l;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/ser/impl/c$d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/l;",
            "Lcom/fasterxml/jackson/databind/BeanProperty;",
            ")",
            "Lcom/fasterxml/jackson/databind/ser/impl/c$d;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/databind/JsonMappingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/l;->findContentValueSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/g;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/fasterxml/jackson/databind/ser/impl/c$d;

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/ser/impl/c;->l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lcom/fasterxml/jackson/databind/ser/impl/c$d;-><init>(Lcom/fasterxml/jackson/databind/g;Lcom/fasterxml/jackson/databind/ser/impl/c;)V

    return-object p3
.end method

.method public abstract l(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/c;"
        }
    .end annotation
.end method

.method public abstract m(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
