.class public Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
.super Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;
.source "DefaultAccessorNamingStrategy.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# static fields
.field private static final g:J = 0x1L


# instance fields
.field protected final b:Ljava/lang/String;

.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/lang/String;

.field protected final f:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-string v1, "set"

    const-string v2, "with"

    const-string v3, "get"

    const-string v4, "is"

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V
    .locals 6

    .line 3
    iget-object v1, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 2
    iget-object v5, p1, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->f:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy$Provider;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    .line 9
    iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->f:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;

    return-void
.end method


# virtual methods
.method public forBuilder(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Lcom/fasterxml/jackson/databind/b;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            "Lcom/fasterxml/jackson/databind/b;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/c;)Lc2/e$a;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    .line 3
    iget-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iget-object p3, v0, Lc2/e$a;->b:Ljava/lang/String;

    :goto_2
    move-object v3, p3

    .line 4
    new-instance p3, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->f:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;

    move-object v0, p3

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-object p3
.end method

.method public forPOJO(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    new-instance v7, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->f:Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-object v7
.end method

.method public forRecord(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/introspect/c;",
            ")",
            "Lcom/fasterxml/jackson/databind/introspect/AccessorNamingStrategy;"
        }
    .end annotation

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$c;

    invoke-direct {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$c;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/c;)V

    return-object v0
.end method

.method public withBaseNameValidator(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 1

    new-instance v0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)V

    return-object v0
.end method

.method public withBuilderPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withFirstCharAcceptance(ZZ)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$b;->b(ZZ)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->withBaseNameValidator(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$a;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    move-result-object p1

    return-object p1
.end method

.method public withGetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withIsGetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public withSetterPrefix(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;
    .locals 7

    new-instance v6, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;->e:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;-><init>(Lcom/fasterxml/jackson/databind/introspect/DefaultAccessorNamingStrategy$Provider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
