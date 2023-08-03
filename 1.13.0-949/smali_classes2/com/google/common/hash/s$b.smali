.class abstract enum Lcom/google/common/hash/s$b;
.super Ljava/lang/Enum;
.source "LittleEndianByteArray.java"

# interfaces
.implements Lcom/google/common/hash/s$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/hash/s$b;",
        ">;",
        "Lcom/google/common/hash/s$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/hash/s$b;

.field private static final synthetic b:[Lcom/google/common/hash/s$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/hash/s$b$a;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/hash/s$b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/hash/s$b;->a:Lcom/google/common/hash/s$b;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/hash/s$b;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/hash/s$b;->b:[Lcom/google/common/hash/s$b;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/hash/s$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/hash/s$b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/hash/s$b;
    .locals 1

    const-class v0, Lcom/google/common/hash/s$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/hash/s$b;

    return-object p0
.end method

.method public static values()[Lcom/google/common/hash/s$b;
    .locals 1

    sget-object v0, Lcom/google/common/hash/s$b;->b:[Lcom/google/common/hash/s$b;

    invoke-virtual {v0}, [Lcom/google/common/hash/s$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/hash/s$b;

    return-object v0
.end method
