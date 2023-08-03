.class public final Lcom/fasterxml/jackson/databind/ser/impl/b;
.super Ljava/lang/Object;
.source "ObjectIdWriter.java"


# instance fields
.field public final a:Lcom/fasterxml/jackson/databind/JavaType;

.field public final b:Lcom/fasterxml/jackson/core/j;

.field public final c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;"
        }
    .end annotation
.end field

.field public final d:Lcom/fasterxml/jackson/databind/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/g<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/j;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/g;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/core/j;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->a:Lcom/fasterxml/jackson/databind/JavaType;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->b:Lcom/fasterxml/jackson/core/j;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->d:Lcom/fasterxml/jackson/databind/g;

    .line 6
    iput-boolean p5, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->e:Z

    return-void
.end method

.method public static a(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Z)Lcom/fasterxml/jackson/databind/ser/impl/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/PropertyName;",
            "Lcom/fasterxml/jackson/annotation/ObjectIdGenerator<",
            "*>;Z)",
            "Lcom/fasterxml/jackson/databind/ser/impl/b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    :goto_1
    move-object v3, v0

    .line 3
    new-instance p1, Lcom/fasterxml/jackson/databind/ser/impl/b;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v4, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/impl/b;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/j;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/g;Z)V

    return-object p1
.end method


# virtual methods
.method public b(Z)Lcom/fasterxml/jackson/databind/ser/impl/b;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->e:Z

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/b;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->b:Lcom/fasterxml/jackson/core/j;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->d:Lcom/fasterxml/jackson/databind/g;

    move-object v1, v0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/fasterxml/jackson/databind/ser/impl/b;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/j;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/g;Z)V

    return-object v0
.end method

.method public c(Lcom/fasterxml/jackson/databind/g;)Lcom/fasterxml/jackson/databind/ser/impl/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/g<",
            "*>;)",
            "Lcom/fasterxml/jackson/databind/ser/impl/b;"
        }
    .end annotation

    new-instance v6, Lcom/fasterxml/jackson/databind/ser/impl/b;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->a:Lcom/fasterxml/jackson/databind/JavaType;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->b:Lcom/fasterxml/jackson/core/j;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->c:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;

    iget-boolean v5, p0, Lcom/fasterxml/jackson/databind/ser/impl/b;->e:Z

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/ser/impl/b;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/core/j;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/g;Z)V

    return-object v6
.end method
