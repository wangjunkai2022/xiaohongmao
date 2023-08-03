.class public Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;
.super Landroidx/fragment/app/DialogFragment;
.source "TextEditorDialogFragment.java"


# static fields
.field public static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String; = "extra_input_text"

.field private static final g:Ljava/lang/String; = "extra_color_code"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/view/inputmethod/InputMethodManager;

.field private c:I

.field private d:Li7/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic U(Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;I)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->W(I)V

    return-void
.end method

.method public static synthetic V(Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->X(Landroid/view/View;)V

    return-void
.end method

.method private synthetic W(I)V
    .locals 1

    .line 1
    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->c:I

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method private synthetic X(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->d:Li7/h;

    if-eqz v0, :cond_0

    .line 4
    iget v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->c:I

    invoke-interface {v0, p1, v1}, Li7/h;->a(Ljava/lang/String;I)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method

.method public static Z(Landroidx/appcompat/app/AppCompatActivity;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;
    .locals 2
    .param p0    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget v0, Lf7/b$f;->F3:I

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    const-string v1, ""

    invoke-static {p0, v1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;

    move-result-object p0

    return-object p0
.end method

.method public static a0(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;I)Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;
    .locals 2
    .param p0    # Landroidx/appcompat/app/AppCompatActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_input_text"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_color_code"

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;

    invoke-direct {p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    sget-object p2, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->e:Ljava/lang/String;

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public Y(Li7/h;)V
    .locals 0

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->d:Li7/h;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget p3, Lf7/b$l;->Y:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lf7/b$i;->t0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a:Landroid/widget/EditText;

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->b:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    sget p2, Lf7/b$i;->s0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 5
    sget v0, Lf7/b$i;->r0:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 7
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    new-instance v0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o0;

    invoke-direct {v1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/o0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;)V

    invoke-virtual {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->i(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;)V

    .line 11
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 12
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "extra_input_text"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_color_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->c:I

    .line 14
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 15
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;->b:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 16
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n0;

    invoke-direct {p1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/n0;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/p0;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
