.class public final Lcom/fasterxml/jackson/core/sym/d;
.super Lcom/fasterxml/jackson/core/sym/f;
.source "Name2.java"


# instance fields
.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/f;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/d;->c:I

    .line 3
    iput p4, p0, Lcom/fasterxml/jackson/core/sym/d;->d:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(II)Z
    .locals 1

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/d;->c:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/fasterxml/jackson/core/sym/d;->d:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(III)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d([II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    aget p2, p1, v1

    iget v2, p0, Lcom/fasterxml/jackson/core/sym/d;->c:I

    if-ne p2, v2, :cond_0

    aget p1, p1, v0

    iget p2, p0, Lcom/fasterxml/jackson/core/sym/d;->d:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
