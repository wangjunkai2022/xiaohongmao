.class final Lcom/google/common/io/k$a;
.super Ljava/io/Writer;
.source "CharStreams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/google/common/io/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/io/k$a;

    invoke-direct {v0}, Lcom/google/common/io/k$a;-><init>()V

    sput-object v0, Lcom/google/common/io/k$a;->a:Lcom/google/common/io/k$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/common/io/k$a;
    .locals 1

    sget-object v0, Lcom/google/common/io/k$a;->a:Lcom/google/common/io/k$a;

    return-object v0
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 0

    .line 4
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/google/common/base/a0;->f0(III)V

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/common/io/k$a;->append(C)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/common/io/k$a;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/common/io/k$a;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CharStreams.nullWriter()"

    return-object v0
.end method

.method public write(I)V
    .locals 0

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0

    add-int/2addr p3, p2

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p2, p3, p1}, Lcom/google/common/base/a0;->f0(III)V

    return-void
.end method

.method public write([C)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write([CII)V
    .locals 0

    add-int/2addr p3, p2

    .line 2
    array-length p1, p1

    invoke-static {p2, p3, p1}, Lcom/google/common/base/a0;->f0(III)V

    return-void
.end method
