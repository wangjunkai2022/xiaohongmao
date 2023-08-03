.class abstract enum Lcom/google/common/reflect/n$c;
.super Ljava/lang/Enum;
.source "Types.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/reflect/n$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/reflect/n$c;

.field public static final enum b:Lcom/google/common/reflect/n$c;

.field static final c:Lcom/google/common/reflect/n$c;

.field private static final synthetic d:[Lcom/google/common/reflect/n$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/reflect/n$c$a;

    const-string v1, "OWNED_BY_ENCLOSING_CLASS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/n$c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/n$c;->a:Lcom/google/common/reflect/n$c;

    .line 2
    new-instance v1, Lcom/google/common/reflect/n$c$c;

    const-string v3, "LOCAL_CLASS_HAS_NO_OWNER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/common/reflect/n$c$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/common/reflect/n$c;->b:Lcom/google/common/reflect/n$c;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/common/reflect/n$c;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/google/common/reflect/n$c;->d:[Lcom/google/common/reflect/n$c;

    .line 4
    invoke-static {}, Lcom/google/common/reflect/n$c;->a()Lcom/google/common/reflect/n$c;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/n$c;->c:Lcom/google/common/reflect/n$c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/n$c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()Lcom/google/common/reflect/n$c;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/common/reflect/n$c$d;

    invoke-direct {v0}, Lcom/google/common/reflect/n$c$d;-><init>()V

    const-class v0, Lcom/google/common/reflect/n$c$d;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 3
    invoke-static {}, Lcom/google/common/reflect/n$c;->values()[Lcom/google/common/reflect/n$c;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    const-class v5, Lcom/google/common/reflect/n$c$b;

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/n$c;->b(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v5, v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/n$c;
    .locals 1

    const-class v0, Lcom/google/common/reflect/n$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/reflect/n$c;

    return-object p0
.end method

.method public static values()[Lcom/google/common/reflect/n$c;
    .locals 1

    sget-object v0, Lcom/google/common/reflect/n$c;->d:[Lcom/google/common/reflect/n$c;

    invoke-virtual {v0}, [Lcom/google/common/reflect/n$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/n$c;

    return-object v0
.end method


# virtual methods
.method abstract b(Ljava/lang/Class;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method
