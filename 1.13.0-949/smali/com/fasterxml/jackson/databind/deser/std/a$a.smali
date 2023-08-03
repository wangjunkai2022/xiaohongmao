.class final Lcom/fasterxml/jackson/databind/deser/std/a$a;
.super Ljava/lang/Object;
.source "JsonNodeDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/std/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/fasterxml/jackson/databind/node/ContainerNode;
    .locals 2

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    aget-object v0, v1, v0

    return-object v0
.end method

.method public b(Lcom/fasterxml/jackson/databind/node/ContainerNode;)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->c:I

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    aput-object p1, v1, v0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    if-nez v0, :cond_1

    const/16 v0, 0xa

    .line 4
    iput v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->c:I

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 5
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa0

    const/16 v2, 0x14

    shr-int/lit8 v3, v1, 0x1

    .line 6
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->c:I

    .line 7
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->a:[Lcom/fasterxml/jackson/databind/node/ContainerNode;

    iget v1, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    aput-object p1, v0, v1

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/databind/deser/std/a$a;->b:I

    return v0
.end method
