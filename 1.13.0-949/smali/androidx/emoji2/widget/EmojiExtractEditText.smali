.class public Landroidx/emoji2/widget/EmojiExtractEditText;
.super Landroid/inputmethodservice/ExtractEditText;
.source "EmojiExtractEditText.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v0}, Landroidx/emoji2/widget/EmojiExtractEditText;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x101006e

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p2, p1, v0}, Landroidx/emoji2/widget/EmojiExtractEditText;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p2, p3, p1}, Landroidx/emoji2/widget/EmojiExtractEditText;->init(Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractEditText;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    invoke-direct {v0, p0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;-><init>(Landroid/widget/EditText;)V

    iput-object v0, p0, Landroidx/emoji2/widget/EmojiExtractEditText;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/widget/EmojiExtractEditText;->mEmojiEditTextHelper:Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    return-object v0
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Landroidx/emoji2/widget/EmojiExtractEditText;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/emoji2/widget/EmojiExtractEditText;->mInitialized:Z

    .line 3
    new-instance v0, Landroidx/emoji2/widget/EditTextAttributeHelper;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/emoji2/widget/EditTextAttributeHelper;-><init>(Landroid/view/View;Landroid/util/AttributeSet;II)V

    .line 4
    invoke-virtual {v0}, Landroidx/emoji2/widget/EditTextAttributeHelper;->getMaxEmojiCount()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/emoji2/widget/EmojiExtractEditText;->setMaxEmojiCount(I)V

    .line 5
    invoke-super {p0}, Landroid/inputmethodservice/ExtractEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/emoji2/widget/EmojiExtractEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getEmojiReplaceStrategy()I
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->getEmojiReplaceStrategy()I

    move-result v0

    return v0
.end method

.method public getMaxEmojiCount()I
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->getMaxEmojiCount()I

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->onCreateInputConnection(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1    # Landroid/view/ActionMode$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0, p1}, Landroidx/core/widget/TextViewCompat;->wrapCustomSelectionActionModeCallback(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setEmojiReplaceStrategy(I)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->setEmojiReplaceStrategy(I)V

    return-void
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 1
    .param p1    # Landroid/text/method/KeyListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->getKeyListener(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/ExtractEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    return-void
.end method

.method public setMaxEmojiCount(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    invoke-direct {p0}, Landroidx/emoji2/widget/EmojiExtractEditText;->getEmojiEditTextHelper()Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/emoji2/viewsintegration/EmojiEditTextHelper;->setMaxEmojiCount(I)V

    return-void
.end method
