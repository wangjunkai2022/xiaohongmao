.class public final Landroidx/emoji2/widget/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/widget/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final EmojiEditText:[I

.field public static final EmojiEditText_maxEmojiCount:I

.field public static final EmojiExtractTextLayout:[I

.field public static final EmojiExtractTextLayout_emojiReplaceStrategy:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x7f040383

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroidx/emoji2/widget/R$styleable;->EmojiEditText:[I

    new-array v0, v0, [I

    const v1, 0x7f0401fb

    aput v1, v0, v3

    sput-object v0, Landroidx/emoji2/widget/R$styleable;->EmojiExtractTextLayout:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
