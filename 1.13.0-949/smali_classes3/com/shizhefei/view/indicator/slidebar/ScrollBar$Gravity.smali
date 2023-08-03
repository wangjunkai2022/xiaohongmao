.class public final enum Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
.super Ljava/lang/Enum;
.source "ScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shizhefei/view/indicator/slidebar/ScrollBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field public static final enum TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

.field private static final synthetic a:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 2
    new-instance v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v3, "TOP_FLOAT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->TOP_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 3
    new-instance v3, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v5, "BOTTOM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 4
    new-instance v5, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v7, "BOTTOM_FLOAT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->BOTTOM_FLOAT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 5
    new-instance v7, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v9, "CENTENT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    .line 6
    new-instance v9, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const-string v11, "CENTENT_BACKGROUND"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->CENTENT_BACKGROUND:Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->a:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

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

.method public static valueOf(Ljava/lang/String;)Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    const-class v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object p0
.end method

.method public static values()[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;
    .locals 1

    sget-object v0, Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->a:[Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    invoke-virtual {v0}, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/shizhefei/view/indicator/slidebar/ScrollBar$Gravity;

    return-object v0
.end method
