.class final enum Lorg/jsoup/nodes/Entities$b;
.super Ljava/lang/Enum;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/nodes/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/nodes/Entities$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lorg/jsoup/nodes/Entities$b;

.field public static final enum b:Lorg/jsoup/nodes/Entities$b;

.field public static final enum c:Lorg/jsoup/nodes/Entities$b;

.field private static final synthetic d:[Lorg/jsoup/nodes/Entities$b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/jsoup/nodes/Entities$b;

    const-string v1, "ascii"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$b;->a:Lorg/jsoup/nodes/Entities$b;

    new-instance v0, Lorg/jsoup/nodes/Entities$b;

    const-string v1, "utf"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$b;->b:Lorg/jsoup/nodes/Entities$b;

    new-instance v0, Lorg/jsoup/nodes/Entities$b;

    const-string v1, "fallback"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/jsoup/nodes/Entities$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jsoup/nodes/Entities$b;->c:Lorg/jsoup/nodes/Entities$b;

    .line 2
    invoke-static {}, Lorg/jsoup/nodes/Entities$b;->a()[Lorg/jsoup/nodes/Entities$b;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Entities$b;->d:[Lorg/jsoup/nodes/Entities$b;

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

.method private static synthetic a()[Lorg/jsoup/nodes/Entities$b;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jsoup/nodes/Entities$b;

    sget-object v1, Lorg/jsoup/nodes/Entities$b;->a:Lorg/jsoup/nodes/Entities$b;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/nodes/Entities$b;->b:Lorg/jsoup/nodes/Entities$b;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/jsoup/nodes/Entities$b;->c:Lorg/jsoup/nodes/Entities$b;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static b(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$b;
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lorg/jsoup/nodes/Entities$b;->a:Lorg/jsoup/nodes/Entities$b;

    return-object p0

    :cond_0
    const-string v0, "UTF-"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 4
    sget-object p0, Lorg/jsoup/nodes/Entities$b;->b:Lorg/jsoup/nodes/Entities$b;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lorg/jsoup/nodes/Entities$b;->c:Lorg/jsoup/nodes/Entities$b;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/nodes/Entities$b;
    .locals 1

    const-class v0, Lorg/jsoup/nodes/Entities$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jsoup/nodes/Entities$b;

    return-object p0
.end method

.method public static values()[Lorg/jsoup/nodes/Entities$b;
    .locals 1

    sget-object v0, Lorg/jsoup/nodes/Entities$b;->d:[Lorg/jsoup/nodes/Entities$b;

    invoke-virtual {v0}, [Lorg/jsoup/nodes/Entities$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jsoup/nodes/Entities$b;

    return-object v0
.end method
