.class final enum Lcom/google/common/primitives/m$a;
.super Ljava/lang/Enum;
.source "UnsignedInts.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/primitives/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/primitives/m$a;",
        ">;",
        "Ljava/util/Comparator<",
        "[I>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/primitives/m$a;

.field private static final synthetic b:[Lcom/google/common/primitives/m$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/primitives/m$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/primitives/m$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/primitives/m$a;->a:Lcom/google/common/primitives/m$a;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/primitives/m$a;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/primitives/m$a;->b:[Lcom/google/common/primitives/m$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/primitives/m$a;
    .locals 1

    const-class v0, Lcom/google/common/primitives/m$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/primitives/m$a;

    return-object p0
.end method

.method public static values()[Lcom/google/common/primitives/m$a;
    .locals 1

    sget-object v0, Lcom/google/common/primitives/m$a;->b:[Lcom/google/common/primitives/m$a;

    invoke-virtual {v0}, [Lcom/google/common/primitives/m$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/primitives/m$a;

    return-object v0
.end method


# virtual methods
.method public a([I[I)I
    .locals 4

    .line 1
    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    aget v2, p1, v1

    aget v3, p2, v1

    if-eq v2, v3, :cond_0

    .line 3
    aget p1, p1, v1

    aget p2, p2, v1

    invoke-static {p1, p2}, Lcom/google/common/primitives/m;->b(II)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    array-length p1, p1

    array-length p2, p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, [I

    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lcom/google/common/primitives/m$a;->a([I[I)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "UnsignedInts.lexicographicalComparator()"

    return-object v0
.end method
