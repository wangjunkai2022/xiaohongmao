.class final enum Lcom/google/common/hash/s$d$a;
.super Lcom/google/common/hash/s$d;
.source "LittleEndianByteArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/hash/s$d;-><init>(Ljava/lang/String;ILcom/google/common/hash/s$a;)V

    return-void
.end method


# virtual methods
.method public a([BI)J
    .locals 5

    invoke-static {}, Lcom/google/common/hash/s$d;->d()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/s$d;->c()I

    move-result p2

    int-to-long v3, p2

    add-long/2addr v1, v3

    invoke-virtual {v0, p1, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public b([BIJ)V
    .locals 6

    invoke-static {}, Lcom/google/common/hash/s$d;->d()Lsun/misc/Unsafe;

    move-result-object v0

    int-to-long v1, p2

    invoke-static {}, Lcom/google/common/hash/s$d;->c()I

    move-result p2

    int-to-long v3, p2

    add-long v2, v1, v3

    move-object v1, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method
