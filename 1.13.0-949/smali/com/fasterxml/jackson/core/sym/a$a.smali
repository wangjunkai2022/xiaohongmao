.class final Lcom/fasterxml/jackson/core/sym/a$a;
.super Ljava/lang/Object;
.source "ByteQuadsCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:[I

.field public final e:[Ljava/lang/String;

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(III[I[Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a$a;->a:I

    .line 3
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    .line 4
    iput p3, p0, Lcom/fasterxml/jackson/core/sym/a$a;->c:I

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/a$a;->d:[I

    .line 6
    iput-object p5, p0, Lcom/fasterxml/jackson/core/sym/a$a;->e:[Ljava/lang/String;

    .line 7
    iput p6, p0, Lcom/fasterxml/jackson/core/sym/a$a;->f:I

    .line 8
    iput p7, p0, Lcom/fasterxml/jackson/core/sym/a$a;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/sym/a;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/a;->g:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->a:I

    .line 11
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/a;->k:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->b:I

    .line 12
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/a;->j:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->c:I

    .line 13
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/a;->f:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->d:[I

    .line 14
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/a;->l:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->e:[Ljava/lang/String;

    .line 15
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/a;->m:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/a$a;->f:I

    .line 16
    iget p1, p1, Lcom/fasterxml/jackson/core/sym/a;->n:I

    iput p1, p0, Lcom/fasterxml/jackson/core/sym/a$a;->g:I

    return-void
.end method

.method public static a(I)Lcom/fasterxml/jackson/core/sym/a$a;
    .locals 9

    shl-int/lit8 v7, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/fasterxml/jackson/core/sym/a;->c(I)I

    move-result v3

    .line 2
    new-instance v8, Lcom/fasterxml/jackson/core/sym/a$a;

    new-array v4, v7, [I

    shl-int/lit8 v0, p0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    sub-int v6, v7, p0

    const/4 v2, 0x0

    move-object v0, v8

    move v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/core/sym/a$a;-><init>(III[I[Ljava/lang/String;II)V

    return-object v8
.end method
