.class final enum Lcom/google/common/collect/i3$i;
.super Ljava/lang/Enum;
.source "MultimapBuilder.java"

# interfaces
.implements Lcom/google/common/base/i0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/i3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "i"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/i3$i;",
        ">;",
        "Lcom/google/common/base/i0<",
        "Ljava/util/List<",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/common/collect/i3$i;

.field private static final synthetic b:[Lcom/google/common/collect/i3$i;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/collect/i3$i;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/i3$i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/i3$i;->a:Lcom/google/common/collect/i3$i;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/common/collect/i3$i;

    aput-object v0, v1, v2

    .line 2
    sput-object v1, Lcom/google/common/collect/i3$i;->b:[Lcom/google/common/collect/i3$i;

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

.method public static b()Lcom/google/common/base/i0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/base/i0<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/i3$i;->a:Lcom/google/common/collect/i3$i;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/i3$i;
    .locals 1

    const-class v0, Lcom/google/common/collect/i3$i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/i3$i;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/i3$i;
    .locals 1

    sget-object v0, Lcom/google/common/collect/i3$i;->b:[Lcom/google/common/collect/i3$i;

    invoke-virtual {v0}, [Lcom/google/common/collect/i3$i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/i3$i;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/i3$i;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
