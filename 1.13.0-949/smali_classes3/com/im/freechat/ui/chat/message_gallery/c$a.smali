.class public final Lcom/im/freechat/ui/chat/message_gallery/c$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GalleryPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/freechat/ui/chat/message_gallery/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGalleryPagerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GalleryPagerAdapter.kt\ncom/im/freechat/ui/chat/message_gallery/GalleryPagerAdapter$GalleryHolder\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,97:1\n254#2,2:98\n254#2,2:100\n254#2,2:102\n254#2,2:104\n254#2,2:106\n254#2,2:108\n254#2,2:110\n*S KotlinDebug\n*F\n+ 1 GalleryPagerAdapter.kt\ncom/im/freechat/ui/chat/message_gallery/GalleryPagerAdapter$GalleryHolder\n*L\n57#1:98,2\n59#1:100,2\n62#1:102,2\n64#1:104,2\n67#1:106,2\n69#1:108,2\n81#1:110,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J \u0010\u0007\u001a\u00020\u00052\u0018\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0002J\u001a\u0010\n\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00050\u0008J\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004R*\u0010\u0012\u001a\u0016\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R$\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/ui/chat/message_gallery/c$a;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lkotlin/Function2;",
        "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
        "",
        "",
        "l",
        "e",
        "Lkotlin/Function1;",
        "Landroid/widget/FrameLayout;",
        "f",
        "Lcom/im/freechat/ui/chat/history/a;",
        "item",
        "position",
        "currentlyPlaying",
        "c",
        "b",
        "Lkotlin/jvm/functions/Function2;",
        "playListener",
        "Lkotlin/jvm/functions/Function1;",
        "playerViewAttachListener",
        "Lf4/g1;",
        "binding",
        "<init>",
        "(Lf4/g1;)V",
        "app_prodRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# instance fields
.field private final a:Lf4/g1;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lf4/g1;)V
    .locals 1
    .param p1    # Lf4/g1;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf4/g1;->b()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->a:Lf4/g1;

    return-void
.end method

.method public static synthetic b(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;ILandroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/im/freechat/ui/chat/message_gallery/c$a;->d(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;ILandroid/view/View;)V

    return-void
.end method

.method private static final d(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;ILandroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->b:Lkotlin/jvm/functions/Function2;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/im/freechat/ui/chat/history/a;II)V
    .locals 19
    .param p1    # Lcom/im/freechat/ui/chat/history/a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "item"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v4, v0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->a:Lf4/g1;

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v5

    .line 3
    instance-of v6, v5, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const-string v7, "btnPlay"

    const/4 v8, 0x1

    const/16 v9, 0x8

    const-string v10, "photoView"

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    .line 4
    iget-object v2, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v12, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v2

    check-cast v2, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-static {v2}, Lcom/im/freechat/extend/p;->l(Lcom/im/freechat/shared/entities/message/ImageAttachment;)Ljava/lang/Object;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    .line 7
    iget-object v2, v4, Lf4/g1;->b:Landroid/widget/ImageView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 9
    :cond_0
    instance-of v6, v5, Lcom/im/freechat/shared/entities/message/FileAttachment;

    if-eqz v6, :cond_1

    .line 10
    iget-object v2, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v12, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v2

    invoke-static {v2}, Lcom/im/freechat/extend/p;->k(Lcom/im/freechat/shared/entities/message/Attachment;)Ljava/lang/Object;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    .line 13
    iget-object v2, v4, Lf4/g1;->b:Landroid/widget/ImageView;

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 15
    :cond_1
    instance-of v5, v5, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    if-eqz v5, :cond_6

    .line 16
    iget-object v5, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v3, v2, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/16 v6, 0x8

    .line 17
    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 18
    iget-object v12, v4, Lf4/g1;->d:Lcom/github/chrisbanes/photoview/PhotoView;

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->h()Lcom/im/freechat/shared/entities/message/Attachment;

    move-result-object v5

    check-cast v5, Lcom/im/freechat/shared/entities/message/VideoAttachment;

    invoke-static {v5}, Lcom/im/freechat/extend/p;->i(Lcom/im/freechat/shared/entities/message/VideoAttachment;)Ljava/lang/Object;

    move-result-object v13

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/im/freechat/extend/m;->s(Landroid/widget/ImageView;Ljava/lang/Object;FZIILjava/lang/Object;)V

    .line 19
    iget-object v5, v4, Lf4/g1;->b:Landroid/widget/ImageView;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq v3, v2, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    const/16 v6, 0x8

    .line 20
    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 21
    iget-object v5, v4, Lf4/g1;->b:Landroid/widget/ImageView;

    new-instance v6, Lcom/im/freechat/ui/chat/message_gallery/b;

    invoke-direct {v6, v0, v1, v2}, Lcom/im/freechat/ui/chat/message_gallery/b;-><init>(Lcom/im/freechat/ui/chat/message_gallery/c$a;Lcom/im/freechat/ui/chat/history/a;I)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-ne v3, v2, :cond_6

    .line 22
    iget-object v2, v4, Lf4/g1;->c:Landroid/widget/FrameLayout;

    sget v3, Lb4/b$j;->ic:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_6

    .line 23
    iget-object v2, v0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->c:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_6

    iget-object v3, v4, Lf4/g1;->c:Landroid/widget/FrameLayout;

    const-string v5, "container"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_6
    :goto_4
    iget-object v2, v4, Lf4/g1;->e:Landroid/widget/TextView;

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, ""

    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/im/freechat/ui/chat/history/a;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_5

    :cond_7
    const/4 v1, 0x0

    :goto_5
    if-ne v1, v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-eqz v8, :cond_9

    const/4 v9, 0x0

    .line 27
    :cond_9
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final e(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/im/freechat/shared/entities/message/VideoAttachment;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->b:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/widget/FrameLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/im/freechat/ui/chat/message_gallery/c$a;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method
