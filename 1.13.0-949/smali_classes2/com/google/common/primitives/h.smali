.class final Lcom/google/common/primitives/h;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation build Lh3/b;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/primitives/h;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/common/primitives/h;->b:I

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/google/common/primitives/h;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const-string v1, "0x"

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x10

    if-nez v1, :cond_3

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x23

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 6
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x8

    goto :goto_1

    :cond_2
    const/16 v2, 0xa

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 8
    :goto_1
    new-instance v0, Lcom/google/common/primitives/h;

    invoke-direct {v0, p0, v2}, Lcom/google/common/primitives/h;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 9
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "empty string"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
