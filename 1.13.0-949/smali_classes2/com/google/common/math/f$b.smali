.class abstract enum Lcom/google/common/math/f$b;
.super Ljava/lang/Enum;
.source "LongMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/math/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/math/f$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/math/f$b;

.field public static final enum b:Lcom/google/common/math/f$b;

.field private static final synthetic c:[Lcom/google/common/math/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/math/f$b$a;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/math/f$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/math/f$b;->a:Lcom/google/common/math/f$b;

    .line 2
    new-instance v1, Lcom/google/common/math/f$b$b;

    const-string v3, "LARGE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/math/f$b$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/math/f$b;->b:Lcom/google/common/math/f$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/math/f$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/math/f$b;->c:[Lcom/google/common/math/f$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/math/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/math/f$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private b(JJJ)J
    .locals 9

    const-wide/16 v0, 0x1

    move-wide v3, v0

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v2, p3, v5

    if-eqz v2, :cond_1

    and-long v7, p3, v0

    cmp-long v2, v7, v5

    if-eqz v2, :cond_0

    move-object v2, p0

    move-wide v5, p1

    move-wide v7, p5

    .line 1
    invoke-virtual/range {v2 .. v8}, Lcom/google/common/math/f$b;->a(JJJ)J

    move-result-wide v3

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/google/common/math/f$b;->c(JJ)J

    move-result-wide p1

    const/4 v2, 0x1

    shr-long/2addr p3, v2

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method static d(JJ)Z
    .locals 3

    const-wide v0, 0xb504f333L

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    sget-object v0, Lcom/google/common/math/f$b;->a:Lcom/google/common/math/f$b;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/common/math/f$b;->b:Lcom/google/common/math/f$b;

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/math/f$b;->e(JJ)Z

    move-result p0

    return p0
.end method

.method private e(JJ)Z
    .locals 15

    move-wide/from16 v7, p3

    const-wide/16 v9, 0x1

    sub-long v11, v7, v9

    .line 1
    invoke-static {v11, v12}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v13

    shr-long v3, v11, v13

    .line 2
    rem-long v1, p1, v7

    const/4 v14, 0x1

    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-nez v0, :cond_0

    return v14

    :cond_0
    move-object v0, p0

    move-wide/from16 v5, p3

    .line 3
    invoke-direct/range {v0 .. v6}, Lcom/google/common/math/f$b;->b(JJJ)J

    move-result-wide v0

    cmp-long v2, v0, v9

    if-nez v2, :cond_1

    return v14

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    cmp-long v4, v0, v11

    if-eqz v4, :cond_3

    add-int/2addr v3, v14

    if-ne v3, v13, :cond_2

    return v2

    :cond_2
    move-object v4, p0

    .line 4
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/google/common/math/f$b;->c(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_3
    move-object v4, p0

    return v14
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/math/f$b;
    .locals 1

    const-class v0, Lcom/google/common/math/f$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/math/f$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/math/f$b;
    .locals 1

    sget-object v0, Lcom/google/common/math/f$b;->c:[Lcom/google/common/math/f$b;

    invoke-virtual {v0}, [Lcom/google/common/math/f$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/math/f$b;

    return-object v0
.end method


# virtual methods
.method abstract a(JJJ)J
.end method

.method abstract c(JJ)J
.end method
