.class public final enum Lcom/im/freechat/ui/chat/history/HistoryTab;
.super Ljava/lang/Enum;
.source "HistoryTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/im/freechat/ui/chat/history/HistoryTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0013\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0007\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/history/HistoryTab;",
        "",
        "",
        "a",
        "I",
        "getResId",
        "()I",
        "resId",
        "<init>",
        "(Ljava/lang/String;II)V",
        "Members",
        "Media",
        "Links",
        "Files",
        "Groups",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# static fields
.field public static final enum Files:Lcom/im/freechat/ui/chat/history/HistoryTab;

.field public static final enum Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

.field public static final enum Links:Lcom/im/freechat/ui/chat/history/HistoryTab;

.field public static final enum Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

.field public static final enum Members:Lcom/im/freechat/ui/chat/history/HistoryTab;

.field private static final synthetic b:[Lcom/im/freechat/ui/chat/history/HistoryTab;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget v1, Lb4/b$s;->u2:I

    const-string v2, "Members"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/ui/chat/history/HistoryTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Members:Lcom/im/freechat/ui/chat/history/HistoryTab;

    .line 2
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget v1, Lb4/b$s;->t2:I

    const-string v2, "Media"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/ui/chat/history/HistoryTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

    .line 3
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget v1, Lb4/b$s;->s2:I

    const-string v2, "Links"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/ui/chat/history/HistoryTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Links:Lcom/im/freechat/ui/chat/history/HistoryTab;

    .line 4
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget v1, Lb4/b$s;->q2:I

    const-string v2, "Files"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/ui/chat/history/HistoryTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Files:Lcom/im/freechat/ui/chat/history/HistoryTab;

    .line 5
    new-instance v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget v1, Lb4/b$s;->r2:I

    const-string v2, "Groups"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/im/freechat/ui/chat/history/HistoryTab;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-static {}, Lcom/im/freechat/ui/chat/history/HistoryTab;->a()[Lcom/im/freechat/ui/chat/history/HistoryTab;

    move-result-object v0

    sput-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->b:[Lcom/im/freechat/ui/chat/history/HistoryTab;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/im/freechat/ui/chat/history/HistoryTab;->a:I

    return-void
.end method

.method private static final synthetic a()[Lcom/im/freechat/ui/chat/history/HistoryTab;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/im/freechat/ui/chat/history/HistoryTab;

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTab;->Members:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTab;->Media:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTab;->Links:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTab;->Files:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/im/freechat/ui/chat/history/HistoryTab;->Groups:Lcom/im/freechat/ui/chat/history/HistoryTab;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/im/freechat/ui/chat/history/HistoryTab;
    .locals 1

    const-class v0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/im/freechat/ui/chat/history/HistoryTab;

    return-object p0
.end method

.method public static values()[Lcom/im/freechat/ui/chat/history/HistoryTab;
    .locals 1

    sget-object v0, Lcom/im/freechat/ui/chat/history/HistoryTab;->b:[Lcom/im/freechat/ui/chat/history/HistoryTab;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/im/freechat/ui/chat/history/HistoryTab;

    return-object v0
.end method


# virtual methods
.method public final getResId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/ui/chat/history/HistoryTab;->a:I

    return v0
.end method
