.class final Lcom/google/common/io/f$d;
.super Lcom/google/common/io/f$b;
.source "ByteSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/io/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final d:Lcom/google/common/io/f$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/io/f$d;

    invoke-direct {v0}, Lcom/google/common/io/f$d;-><init>()V

    sput-object v0, Lcom/google/common/io/f$d;->d:Lcom/google/common/io/f$d;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Lcom/google/common/io/f$b;-><init>([B)V

    return-void
.end method


# virtual methods
.method public a(Ljava/nio/charset/Charset;)Lcom/google/common/io/j;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/base/a0;->E(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/google/common/io/j;->h()Lcom/google/common/io/j;

    move-result-object p1

    return-object p1
.end method

.method public o()[B
    .locals 1

    iget-object v0, p0, Lcom/google/common/io/f$b;->a:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ByteSource.empty()"

    return-object v0
.end method
