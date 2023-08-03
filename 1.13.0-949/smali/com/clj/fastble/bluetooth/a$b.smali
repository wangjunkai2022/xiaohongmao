.class final enum Lcom/clj/fastble/bluetooth/a$b;
.super Ljava/lang/Enum;
.source "BleBluetooth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clj/fastble/bluetooth/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/clj/fastble/bluetooth/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/clj/fastble/bluetooth/a$b;

.field public static final enum b:Lcom/clj/fastble/bluetooth/a$b;

.field public static final enum c:Lcom/clj/fastble/bluetooth/a$b;

.field public static final enum d:Lcom/clj/fastble/bluetooth/a$b;

.field public static final enum e:Lcom/clj/fastble/bluetooth/a$b;

.field private static final synthetic f:[Lcom/clj/fastble/bluetooth/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/clj/fastble/bluetooth/a$b;

    const-string v1, "CONNECT_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/clj/fastble/bluetooth/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clj/fastble/bluetooth/a$b;->a:Lcom/clj/fastble/bluetooth/a$b;

    .line 2
    new-instance v1, Lcom/clj/fastble/bluetooth/a$b;

    const-string v3, "CONNECT_CONNECTING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/clj/fastble/bluetooth/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/clj/fastble/bluetooth/a$b;->b:Lcom/clj/fastble/bluetooth/a$b;

    .line 3
    new-instance v3, Lcom/clj/fastble/bluetooth/a$b;

    const-string v5, "CONNECT_CONNECTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/clj/fastble/bluetooth/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/clj/fastble/bluetooth/a$b;->c:Lcom/clj/fastble/bluetooth/a$b;

    .line 4
    new-instance v5, Lcom/clj/fastble/bluetooth/a$b;

    const-string v7, "CONNECT_FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/clj/fastble/bluetooth/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/clj/fastble/bluetooth/a$b;->d:Lcom/clj/fastble/bluetooth/a$b;

    .line 5
    new-instance v7, Lcom/clj/fastble/bluetooth/a$b;

    const-string v9, "CONNECT_DISCONNECT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/clj/fastble/bluetooth/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/clj/fastble/bluetooth/a$b;->e:Lcom/clj/fastble/bluetooth/a$b;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/clj/fastble/bluetooth/a$b;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/clj/fastble/bluetooth/a$b;->f:[Lcom/clj/fastble/bluetooth/a$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/clj/fastble/bluetooth/a$b;
    .locals 1

    const-class v0, Lcom/clj/fastble/bluetooth/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clj/fastble/bluetooth/a$b;

    return-object p0
.end method

.method public static values()[Lcom/clj/fastble/bluetooth/a$b;
    .locals 1

    sget-object v0, Lcom/clj/fastble/bluetooth/a$b;->f:[Lcom/clj/fastble/bluetooth/a$b;

    invoke-virtual {v0}, [Lcom/clj/fastble/bluetooth/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/clj/fastble/bluetooth/a$b;

    return-object v0
.end method
