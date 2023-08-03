.class public Lcom/fasterxml/jackson/databind/util/u;
.super Lcom/fasterxml/jackson/core/f;
.source "TokenBufferReadContext.java"


# instance fields
.field protected final f:Lcom/fasterxml/jackson/core/f;

.field protected final g:Lcom/fasterxml/jackson/core/JsonLocation;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/fasterxml/jackson/core/f;-><init>(II)V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    .line 19
    sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/core/JsonLocation;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/f;-><init>(Lcom/fasterxml/jackson/core/f;)V

    .line 13
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    .line 14
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->h:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->c()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->i:Ljava/lang/Object;

    .line 16
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/core/io/ContentReference;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/f;-><init>(Lcom/fasterxml/jackson/core/f;)V

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->e()Lcom/fasterxml/jackson/core/f;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    .line 3
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/f;->c()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->i:Ljava/lang/Object;

    .line 5
    instance-of v0, p1, Lcom/fasterxml/jackson/core/json/d;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/fasterxml/jackson/core/json/d;

    .line 7
    invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/core/json/d;->q(Lcom/fasterxml/jackson/core/io/ContentReference;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    goto :goto_0

    .line 8
    :cond_0
    sget-object p1, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    :goto_0
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/core/f;Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9
    instance-of v0, p2, Lcom/fasterxml/jackson/core/io/ContentReference;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/fasterxml/jackson/core/io/ContentReference;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p2}, Lcom/fasterxml/jackson/core/io/ContentReference;->rawReference(Ljava/lang/Object;)Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object p2

    .line 11
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/core/io/ContentReference;)V

    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/util/u;II)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p3}, Lcom/fasterxml/jackson/core/f;-><init>(II)V

    .line 21
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    .line 22
    iget-object p1, p1, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    return-void
.end method

.method public static u(Lcom/fasterxml/jackson/core/f;)Lcom/fasterxml/jackson/databind/util/u;
    .locals 2

    if-nez p0, :cond_0

    .line 1
    new-instance p0, Lcom/fasterxml/jackson/databind/util/u;

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/u;-><init>()V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/util/u;

    invoke-static {}, Lcom/fasterxml/jackson/core/io/ContentReference;->unknown()Lcom/fasterxml/jackson/core/io/ContentReference;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/core/io/ContentReference;)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->h:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->i:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Lcom/fasterxml/jackson/core/f;
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    return-object v0
.end method

.method public i()Z
    .locals 1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->i:Ljava/lang/Object;

    return-void
.end method

.method public s()Lcom/fasterxml/jackson/databind/util/u;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/u;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Lcom/fasterxml/jackson/databind/util/u;II)V

    return-object v0
.end method

.method public t()Lcom/fasterxml/jackson/databind/util/u;
    .locals 3

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    .line 2
    new-instance v0, Lcom/fasterxml/jackson/databind/util/u;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Lcom/fasterxml/jackson/databind/util/u;II)V

    return-object v0
.end method

.method public v()Lcom/fasterxml/jackson/databind/util/u;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/u;->f:Lcom/fasterxml/jackson/core/f;

    instance-of v1, v0, Lcom/fasterxml/jackson/databind/util/u;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/fasterxml/jackson/databind/util/u;

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/fasterxml/jackson/databind/util/u;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/u;-><init>()V

    return-object v0

    .line 4
    :cond_1
    new-instance v1, Lcom/fasterxml/jackson/databind/util/u;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/u;->g:Lcom/fasterxml/jackson/core/JsonLocation;

    invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/databind/util/u;-><init>(Lcom/fasterxml/jackson/core/f;Lcom/fasterxml/jackson/core/JsonLocation;)V

    return-object v1
.end method

.method public w(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fasterxml/jackson/core/JsonProcessingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/u;->h:Ljava/lang/String;

    return-void
.end method

.method public x()V
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fasterxml/jackson/core/f;->b:I

    return-void
.end method
