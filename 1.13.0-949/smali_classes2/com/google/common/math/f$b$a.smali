.class final enum Lcom/google/common/math/f$b$a;
.super Lcom/google/common/math/f$b;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/f$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/math/f$b;-><init>(Ljava/lang/String;ILcom/google/common/math/f$a;)V

    return-void
.end method


# virtual methods
.method a(JJJ)J
    .locals 0

    mul-long p1, p1, p3

    rem-long/2addr p1, p5

    return-wide p1
.end method

.method c(JJ)J
    .locals 0

    mul-long p1, p1, p1

    rem-long/2addr p1, p3

    return-wide p1
.end method
