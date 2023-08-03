.class Lcom/hbb20/f;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"


# static fields
.field private static final a:Ljava/lang/reflect/Field;

.field private static final b:Ljava/lang/reflect/Field;

.field private static final c:Ljava/lang/reflect/Field;

.field static d:Landroid/app/Dialog;

.field static e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    :try_start_0
    const-class v2, Landroid/widget/TextView;

    const-string v3, "mCursorDrawableRes"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 2
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 3
    const-class v3, Landroid/widget/TextView;

    const-string v4, "mEditor"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4
    :try_start_2
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "mCursorDrawable"

    .line 6
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 7
    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v4, v1

    goto :goto_1

    :catch_2
    move-object v3, v1

    goto :goto_0

    :catch_3
    move-object v2, v1

    move-object v3, v2

    :goto_0
    move-object v4, v3

    :goto_1
    if-eqz v0, :cond_0

    .line 8
    sput-object v1, Lcom/hbb20/f;->a:Ljava/lang/reflect/Field;

    .line 9
    sput-object v1, Lcom/hbb20/f;->b:Ljava/lang/reflect/Field;

    .line 10
    sput-object v1, Lcom/hbb20/f;->c:Ljava/lang/reflect/Field;

    goto :goto_2

    .line 11
    :cond_0
    sput-object v3, Lcom/hbb20/f;->a:Ljava/lang/reflect/Field;

    .line 12
    sput-object v4, Lcom/hbb20/f;->b:Ljava/lang/reflect/Field;

    .line 13
    sput-object v2, Lcom/hbb20/f;->c:Ljava/lang/reflect/Field;

    :goto_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/hbb20/f;->d(Landroid/content/Context;)V

    return-void
.end method

.method static b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    .line 4
    sput-object v0, Lcom/hbb20/f;->e:Landroid/content/Context;

    return-void
.end method

.method private static c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "id"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 2
    check-cast p0, Landroid/app/Activity;

    const-string v0, "input_method"

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public static e(Lcom/hbb20/CountryCodePicker;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "codePicker"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/hbb20/f;->f(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "codePicker",
            "countryNameCode"
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/hbb20/f;->e:Landroid/content/Context;

    .line 2
    new-instance v0, Landroid/app/Dialog;

    sget-object v1, Lcom/hbb20/f;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->K()V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->M()V

    .line 5
    sget-object v0, Lcom/hbb20/f;->e:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/hbb20/b;->l(Landroid/content/Context;Lcom/hbb20/CountryCodePicker;)Ljava/util/List;

    move-result-object v12

    .line 6
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    const/4 v13, 0x1

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 7
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/hbb20/i$k;->G:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 8
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget-object v1, Lcom/hbb20/f;->e:Landroid/content/Context;

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/i$h;->t2:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/i$h;->t3:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    .line 11
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/i$h;->x2:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 12
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/i$h;->U1:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    .line 13
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/i$h;->G1:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/EditText;

    .line 14
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/i$h;->r3:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    .line 15
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v2, Lcom/hbb20/i$h;->u1:I

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroidx/cardview/widget/CardView;

    .line 16
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v3, Lcom/hbb20/i$h;->V1:I

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Landroidx/core/view/WindowInsetsControllerCompat;

    sget-object v4, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-direct {v0, v4, v6}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    .line 19
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    .line 20
    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 21
    :cond_0
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 22
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v0

    const/16 v4, -0x63

    if-eq v0, v4, :cond_1

    .line 24
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v4

    invoke-virtual {v7, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v4

    invoke-virtual {v6, v0, v4}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 26
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFaceStyle()I

    move-result v4

    invoke-virtual {v1, v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto :goto_1

    .line 27
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTypeFace()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    :cond_2
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_3

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    .line 33
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogBackgroundResId()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 35
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogCornerRadius()F

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/cardview/widget/CardView;->setRadius(F)V

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->A()Z

    move-result v0

    const/16 v15, 0x8

    const/4 v8, 0x0

    if-eqz v0, :cond_5

    .line 37
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 38
    new-instance v0, Lcom/hbb20/f$a;

    invoke-direct {v0}, Lcom/hbb20/f$a;-><init>()V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 39
    :cond_5
    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getCcpDialogShowTitle()Z

    move-result v0

    if-nez v0, :cond_6

    .line 41
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    if-eqz v0, :cond_7

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTextColor()I

    move-result v0

    .line 44
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 45
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 46
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setTextColor(I)V

    const/16 v2, 0x64

    .line 49
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 50
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    if-eqz v0, :cond_8

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogSearchEditTextTintColor()I

    move-result v0

    invoke-static {v6, v0}, Lcom/hbb20/f;->g(Landroid/widget/EditText;I)V

    .line 53
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getSearchHintText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getNoResultACK()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->z()Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 58
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 59
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    :cond_9
    new-instance v0, Lcom/hbb20/e;

    sget-object v2, Lcom/hbb20/f;->e:Landroid/content/Context;

    sget-object v16, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    move-object v1, v0

    move-object v3, v12

    move-object/from16 v4, p0

    const/16 v17, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v1 .. v9}, Lcom/hbb20/e;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/hbb20/CountryCodePicker;Landroid/widget/RelativeLayout;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/app/Dialog;Landroid/widget/ImageView;)V

    .line 61
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v2, Lcom/hbb20/f;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v14, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 62
    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    sget v1, Lcom/hbb20/i$h;->K1:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/futuremind/recyclerviewfastscroll/FastScroller;

    .line 64
    invoke-virtual {v0, v14}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->B()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v1

    if-eqz v1, :cond_a

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleColor(I)V

    .line 68
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v1

    if-eqz v1, :cond_b

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerHandleColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setHandleColor(I)V

    .line 70
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v1

    if-eqz v1, :cond_d

    .line 71
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getFastScrollerBubbleTextAppearance()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setBubbleTextAppearance(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 73
    :cond_c
    invoke-virtual {v0, v15}, Lcom/futuremind/recyclerviewfastscroll/FastScroller;->setVisibility(I)V

    .line 74
    :cond_d
    :goto_3
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/hbb20/f$b;

    invoke-direct {v1, v10}, Lcom/hbb20/f$b;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 75
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/hbb20/f$c;

    invoke-direct {v1, v10}, Lcom/hbb20/f$c;-><init>(Lcom/hbb20/CountryCodePicker;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    if-eqz v11, :cond_12

    .line 76
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/b;

    .line 78
    iget-object v1, v1, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v8, 0x1

    goto :goto_4

    :cond_f
    const/4 v8, 0x0

    :goto_4
    if-nez v8, :cond_12

    .line 79
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    .line 80
    iget-object v0, v10, Lcom/hbb20/CountryCodePicker;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, 0x1

    goto :goto_5

    :cond_10
    const/4 v8, 0x0

    :goto_5
    const/4 v0, 0x0

    .line 81
    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_12

    .line 82
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hbb20/b;

    iget-object v1, v1, Lcom/hbb20/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    add-int/2addr v0, v8

    .line 83
    invoke-virtual {v14, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    goto :goto_7

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 84
    :cond_12
    :goto_7
    sget-object v0, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$f;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 86
    invoke-virtual/range {p0 .. p0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$f;

    move-result-object v0

    sget-object v1, Lcom/hbb20/f;->d:Landroid/app/Dialog;

    invoke-interface {v0, v1}, Lcom/hbb20/CountryCodePicker$f;->b(Landroid/app/Dialog;)V

    :cond_13
    return-void
.end method

.method static g(Landroid/widget/EditText;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "editText",
            "color"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hbb20/f;->b:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/hbb20/f;->c:Ljava/lang/reflect/Field;

    .line 3
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    .line 4
    invoke-static {v1, v2}, Lcom/hbb20/f;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, p1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    sget-object p1, Lcom/hbb20/f;->a:Ljava/lang/reflect/Field;

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const/4 v2, 0x1

    aput-object v1, p1, v2

    .line 7
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
