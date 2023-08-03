.class final Lcom/fasterxml/jackson/core/sym/b$b;
.super Ljava/lang/Object;
.source "CharsToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field final c:[Ljava/lang/String;

.field final d:[Lcom/fasterxml/jackson/core/sym/b$a;


# direct methods
.method public constructor <init>(II[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/fasterxml/jackson/core/sym/b$b;->a:I

    .line 3
    iput p2, p0, Lcom/fasterxml/jackson/core/sym/b$b;->b:I

    .line 4
    iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/b$b;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/fasterxml/jackson/core/sym/b$b;->d:[Lcom/fasterxml/jackson/core/sym/b$a;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/sym/b;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/b;->h:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/b$b;->a:I

    .line 8
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/b;->k:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/b$b;->b:I

    .line 9
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/b;->f:[Ljava/lang/String;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/b$b;->c:[Ljava/lang/String;

    .line 10
    iget-object p1, p1, Lcom/fasterxml/jackson/core/sym/b;->g:[Lcom/fasterxml/jackson/core/sym/b$a;

    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/b$b;->d:[Lcom/fasterxml/jackson/core/sym/b$a;

    return-void
.end method

.method public static a(I)Lcom/fasterxml/jackson/core/sym/b$b;
    .locals 3

    new-instance v0, Lcom/fasterxml/jackson/core/sym/b$b;

    new-array v1, p0, [Ljava/lang/String;

    shr-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Lcom/fasterxml/jackson/core/sym/b$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Lcom/fasterxml/jackson/core/sym/b$b;-><init>(II[Ljava/lang/String;[Lcom/fasterxml/jackson/core/sym/b$a;)V

    return-object v0
.end method
