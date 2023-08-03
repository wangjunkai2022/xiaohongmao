.class public Lcom/yalantis/ucrop/view/UCropView;
.super Landroid/widget/FrameLayout;
.source "UCropView.java"


# instance fields
.field private a:Lcom/yalantis/ucrop/view/GestureCropImageView;

.field private final b:Lcom/yalantis/ucrop/view/OverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/yalantis/ucrop/view/UCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/yalantis/ucrop/c$k;->T:I

    const/4 v1, 0x1

    invoke-virtual {p3, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 4
    sget p3, Lcom/yalantis/ucrop/c$h;->F0:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/yalantis/ucrop/view/GestureCropImageView;

    iput-object p3, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 5
    sget p3, Lcom/yalantis/ucrop/c$h;->H2:I

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/yalantis/ucrop/view/OverlayView;

    iput-object p3, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    .line 6
    sget-object v0, Lcom/yalantis/ucrop/c$o;->B8:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    invoke-virtual {p3, p1}, Lcom/yalantis/ucrop/view/OverlayView;->h(Landroid/content/res/TypedArray;)V

    .line 8
    iget-object p2, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p2, p1}, Lcom/yalantis/ucrop/view/CropImageView;->z(Landroid/content/res/TypedArray;)V

    .line 9
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 10
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/UCropView;->d()V

    return-void
.end method

.method static synthetic a(Lcom/yalantis/ucrop/view/UCropView;)Lcom/yalantis/ucrop/view/OverlayView;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    return-object p0
.end method

.method static synthetic b(Lcom/yalantis/ucrop/view/UCropView;)Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 0

    iget-object p0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    new-instance v1, Lcom/yalantis/ucrop/view/UCropView$a;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/view/UCropView$a;-><init>(Lcom/yalantis/ucrop/view/UCropView;)V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setCropBoundsChangeListener(La6/c;)V

    .line 2
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    new-instance v1, Lcom/yalantis/ucrop/view/UCropView$b;

    invoke-direct {v1, p0}, Lcom/yalantis/ucrop/view/UCropView$b;-><init>(Lcom/yalantis/ucrop/view/UCropView;)V

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/OverlayView;->setOverlayViewChangeListener(La6/d;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 2
    new-instance v0, Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yalantis/ucrop/view/GestureCropImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    .line 3
    invoke-direct {p0}, Lcom/yalantis/ucrop/view/UCropView;->d()V

    .line 4
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    invoke-virtual {p0}, Lcom/yalantis/ucrop/view/UCropView;->getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yalantis/ucrop/view/OverlayView;->getCropViewRect()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yalantis/ucrop/view/CropImageView;->setCropRect(Landroid/graphics/RectF;)V

    .line 5
    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public getCropImageView()Lcom/yalantis/ucrop/view/GestureCropImageView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->a:Lcom/yalantis/ucrop/view/GestureCropImageView;

    return-object v0
.end method

.method public getOverlayView()Lcom/yalantis/ucrop/view/OverlayView;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/yalantis/ucrop/view/UCropView;->b:Lcom/yalantis/ucrop/view/OverlayView;

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
