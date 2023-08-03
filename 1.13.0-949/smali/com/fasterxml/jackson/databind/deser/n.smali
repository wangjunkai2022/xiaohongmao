.class public Lcom/fasterxml/jackson/databind/deser/n;
.super Ljava/lang/Object;
.source "UnresolvedId.java"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lcom/fasterxml/jackson/core/JsonLocation;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/fasterxml/jackson/core/JsonLocation;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/n;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/n;->c:Ljava/lang/Class;

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/n;->b:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/n;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public b()Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/n;->b:Lcom/fasterxml/jackson/core/JsonLocation;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/n;->c:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/n;->a:Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/n;->c:Ljava/lang/Class;

    .line 2
    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/g;->j0(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/n;->b:Lcom/fasterxml/jackson/core/JsonLocation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Object id [%s] (for %s) at %s"

    .line 3
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
