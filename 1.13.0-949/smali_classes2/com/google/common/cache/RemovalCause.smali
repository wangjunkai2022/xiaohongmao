.class public abstract enum Lcom/google/common/cache/RemovalCause;
.super Ljava/lang/Enum;
.source "RemovalCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/cache/RemovalCause;",
        ">;"
    }
.end annotation

.annotation build Lh3/b;
.end annotation


# static fields
.field public static final enum COLLECTED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPIRED:Lcom/google/common/cache/RemovalCause;

.field public static final enum EXPLICIT:Lcom/google/common/cache/RemovalCause;

.field public static final enum REPLACED:Lcom/google/common/cache/RemovalCause;

.field public static final enum SIZE:Lcom/google/common/cache/RemovalCause;

.field private static final synthetic a:[Lcom/google/common/cache/RemovalCause;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/google/common/cache/RemovalCause$a;

    const-string v1, "EXPLICIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/cache/RemovalCause$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/cache/RemovalCause;->EXPLICIT:Lcom/google/common/cache/RemovalCause;

    .line 2
    new-instance v1, Lcom/google/common/cache/RemovalCause$b;

    const-string v3, "REPLACED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/cache/RemovalCause$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/cache/RemovalCause;->REPLACED:Lcom/google/common/cache/RemovalCause;

    .line 3
    new-instance v3, Lcom/google/common/cache/RemovalCause$c;

    const-string v5, "COLLECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/common/cache/RemovalCause$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/common/cache/RemovalCause;->COLLECTED:Lcom/google/common/cache/RemovalCause;

    .line 4
    new-instance v5, Lcom/google/common/cache/RemovalCause$d;

    const-string v7, "EXPIRED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/common/cache/RemovalCause$d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/common/cache/RemovalCause;->EXPIRED:Lcom/google/common/cache/RemovalCause;

    .line 5
    new-instance v7, Lcom/google/common/cache/RemovalCause$e;

    const-string v9, "SIZE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/common/cache/RemovalCause$e;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/common/cache/RemovalCause;->SIZE:Lcom/google/common/cache/RemovalCause;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/common/cache/RemovalCause;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/common/cache/RemovalCause;->a:[Lcom/google/common/cache/RemovalCause;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/cache/RemovalCause$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/cache/RemovalCause;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/cache/RemovalCause;
    .locals 1

    const-class v0, Lcom/google/common/cache/RemovalCause;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/cache/RemovalCause;

    return-object p0
.end method

.method public static values()[Lcom/google/common/cache/RemovalCause;
    .locals 1

    sget-object v0, Lcom/google/common/cache/RemovalCause;->a:[Lcom/google/common/cache/RemovalCause;

    invoke-virtual {v0}, [Lcom/google/common/cache/RemovalCause;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/cache/RemovalCause;

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method
