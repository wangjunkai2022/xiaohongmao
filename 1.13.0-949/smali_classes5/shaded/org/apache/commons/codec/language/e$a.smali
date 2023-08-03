.class abstract Lshaded/org/apache/commons/codec/language/e$a;
.super Ljava/lang/Object;
.source "ColognePhonetic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lshaded/org/apache/commons/codec/language/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected final a:[C

.field protected b:I

.field final synthetic c:Lshaded/org/apache/commons/codec/language/e;


# direct methods
.method public constructor <init>(Lshaded/org/apache/commons/codec/language/e;I)V
    .locals 0

    .line 5
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->c:Lshaded/org/apache/commons/codec/language/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    .line 7
    new-array p2, p2, [C

    iput-object p2, p0, Lshaded/org/apache/commons/codec/language/e$a;->a:[C

    .line 8
    iput p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    return-void
.end method

.method public constructor <init>(Lshaded/org/apache/commons/codec/language/e;[C)V
    .locals 0

    .line 1
    iput-object p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->c:Lshaded/org/apache/commons/codec/language/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    .line 3
    iput-object p2, p0, Lshaded/org/apache/commons/codec/language/e$a;->a:[C

    .line 4
    array-length p1, p2

    iput p1, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    return-void
.end method


# virtual methods
.method protected abstract a(II)[C
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget v1, p0, Lshaded/org/apache/commons/codec/language/e$a;->b:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lshaded/org/apache/commons/codec/language/e$a;->a(II)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
