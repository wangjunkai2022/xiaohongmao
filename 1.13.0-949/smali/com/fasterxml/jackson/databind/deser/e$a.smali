.class public Lcom/fasterxml/jackson/databind/deser/e$a;
.super Lcom/fasterxml/jackson/core/format/c$a;
.source "DataFormatReaders.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/deser/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/format/c$a;-><init>(Ljava/io/InputStream;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/core/format/c$a;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/format/c$a;-><init>([BII)V

    return-void
.end method


# virtual methods
.method public c(Lcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)Lcom/fasterxml/jackson/databind/deser/e$b;
    .locals 8

    new-instance v7, Lcom/fasterxml/jackson/databind/deser/e$b;

    iget-object v1, p0, Lcom/fasterxml/jackson/core/format/c$a;->a:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/core/format/c$a;->b:[B

    iget v3, p0, Lcom/fasterxml/jackson/core/format/c$a;->c:I

    iget v0, p0, Lcom/fasterxml/jackson/core/format/c$a;->d:I

    sub-int v4, v0, v3

    move-object v0, v7

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/e$b;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/databind/ObjectReader;Lcom/fasterxml/jackson/core/format/MatchStrength;)V

    return-object v7
.end method
