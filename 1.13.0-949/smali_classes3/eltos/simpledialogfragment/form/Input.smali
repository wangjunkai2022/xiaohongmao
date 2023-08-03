.class public Leltos/simpledialogfragment/form/Input;
.super Leltos/simpledialogfragment/form/FormElement;
.source "Input.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Leltos/simpledialogfragment/form/FormElement<",
        "Leltos/simpledialogfragment/form/Input;",
        "Leltos/simpledialogfragment/form/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_PATTERN:Ljava/lang/String; = "^[a-zA-Z0-9]*$"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Leltos/simpledialogfragment/form/Input;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMAIL_PATTERN:Ljava/lang/String; = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

.field private static final LETTERS_PATTERN:Ljava/lang/String; = "^[a-zA-Z]*$"

.field private static final STRONG_PW_PATTERN:Ljava/lang/String; = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@%_/\'!&#:;,<>=~\"\\|\\*\\+\\-\\$\\^\\?\\.\\(\\)\\{\\}\\[\\]\\\\])(?=\\S+$).*$"


# instance fields
.field private compiledPattern:Ljava/util/regex/Pattern;

.field forceSuggestion:Z

.field private hint:Ljava/lang/String;

.field private hintResourceId:I

.field inputType:I

.field isSpinner:Z

.field maxLength:I

.field minLength:I

.field passwordToggleVisible:Z

.field pattern:Ljava/lang/String;

.field private patternError:Ljava/lang/String;

.field private patternErrorId:I

.field private suggestionArrayRes:I

.field private suggestionStringResArray:[I

.field private suggestions:[Ljava/lang/String;

.field private text:Ljava/lang/String;

.field private textResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Input$a;

    invoke-direct {v0}, Leltos/simpledialogfragment/form/Input$a;-><init>()V

    sput-object v0, Leltos/simpledialogfragment/form/Input;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 19
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    const/4 v1, -0x1

    .line 21
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    .line 22
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    .line 23
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    const/4 v2, 0x1

    .line 24
    iput v2, p0, Leltos/simpledialogfragment/form/Input;->inputType:I

    .line 25
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    .line 26
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    .line 27
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    .line 28
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    .line 29
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 30
    iput-boolean v3, p0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    .line 31
    iput-boolean v3, p0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    .line 32
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    .line 34
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    .line 35
    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->compiledPattern:Ljava/util/regex/Pattern;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->inputType:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/Input;->passwordToggleVisible:Z

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Leltos/simpledialogfragment/form/Input$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/Input;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Leltos/simpledialogfragment/form/FormElement;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    .line 6
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    const/4 v1, 0x1

    .line 7
    iput v1, p0, Leltos/simpledialogfragment/form/Input;->inputType:I

    .line 8
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    .line 9
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    .line 10
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    .line 11
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    .line 12
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    .line 14
    iput-boolean v1, p0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    .line 15
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    .line 16
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    .line 17
    iput v0, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    .line 18
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->compiledPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static email(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x21

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Input;->validatePatternEmail()Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v0, Leltos/simpledialogfragment/c$n;->M:I

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static name(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x2001

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v0, Leltos/simpledialogfragment/c$n;->K0:I

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static password(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x81

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Input;->showPasswordToggle()Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v0, Leltos/simpledialogfragment/c$n;->L0:I

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static phone(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v0, Leltos/simpledialogfragment/c$n;->R0:I

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static pin(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x12

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    sget v0, Leltos/simpledialogfragment/c$n;->S0:I

    .line 3
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->hint(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static plain(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static spinner(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    .line 1
    new-instance v0, Leltos/simpledialogfragment/form/Input;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/Input;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 2
    invoke-virtual {v0, p0}, Leltos/simpledialogfragment/form/Input;->asSpinner(Z)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Input;->forceSuggestion()Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->inputType(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static spinner(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 5
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->spinner(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->suggest(I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static spinner(Ljava/lang/String;Ljava/util/ArrayList;)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Leltos/simpledialogfragment/form/Input;"
        }
    .end annotation

    .line 8
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->spinner(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->suggest(Ljava/util/ArrayList;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static varargs spinner(Ljava/lang/String;[I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 6
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->spinner(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->suggest([I)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method

.method public static varargs spinner(Ljava/lang/String;[Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 0

    .line 7
    invoke-static {p0}, Leltos/simpledialogfragment/form/Input;->spinner(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->suggest([Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asSpinner(Z)Leltos/simpledialogfragment/form/Input;
    .locals 0

    iput-boolean p1, p0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    return-object p0
.end method

.method public bridge synthetic buildViewHolder()Leltos/simpledialogfragment/form/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Leltos/simpledialogfragment/form/Input;->buildViewHolder()Leltos/simpledialogfragment/form/f;

    move-result-object v0

    return-object v0
.end method

.method public buildViewHolder()Leltos/simpledialogfragment/form/f;
    .locals 1

    .line 2
    new-instance v0, Leltos/simpledialogfragment/form/f;

    invoke-direct {v0, p0}, Leltos/simpledialogfragment/form/f;-><init>(Leltos/simpledialogfragment/form/Input;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public forceSuggestion()Leltos/simpledialogfragment/form/Input;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->forceSuggestion(Z)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public forceSuggestion(Z)Leltos/simpledialogfragment/form/Input;
    .locals 0

    .line 2
    iput-boolean p1, p0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    return-object p0
.end method

.method protected getHint(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getPatternError(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSuggestions(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    if-eqz v0, :cond_2

    .line 3
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    aget v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 6
    :cond_2
    iget v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getText(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget v0, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hint(I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    return-object p0
.end method

.method public hint(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 0

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    return-object p0
.end method

.method public inputType(I)Leltos/simpledialogfragment/form/Input;
    .locals 0

    iput p1, p0, Leltos/simpledialogfragment/form/Input;->inputType:I

    return-object p0
.end method

.method public max(I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    return-object p0
.end method

.method public min(I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x1L
        .end annotation
    .end param

    iput p1, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    return-object p0
.end method

.method public showPasswordToggle()Leltos/simpledialogfragment/form/Input;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Leltos/simpledialogfragment/form/Input;->showPasswordToggle(Z)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public showPasswordToggle(Z)Leltos/simpledialogfragment/form/Input;
    .locals 0

    .line 2
    iput-boolean p1, p0, Leltos/simpledialogfragment/form/Input;->passwordToggleVisible:Z

    return-object p0
.end method

.method public suggest(I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ArrayRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    return-object p0
.end method

.method public suggest(Ljava/util/ArrayList;)Leltos/simpledialogfragment/form/Input;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Leltos/simpledialogfragment/form/Input;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->suggest([Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public varargs suggest([I)Leltos/simpledialogfragment/form/Input;
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 2
    array-length v0, p1

    if-lez v0, :cond_0

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    :cond_0
    return-object p0
.end method

.method public varargs suggest([Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 1

    if-eqz p1, :cond_0

    .line 4
    array-length v0, p1

    if-lez v0, :cond_0

    .line 5
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public text(I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    return-object p0
.end method

.method public text(Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 0

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    return-object p0
.end method

.method public validatePattern(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    .line 4
    iput p2, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    return-object p0
.end method

.method public validatePattern(Ljava/lang/String;Ljava/lang/String;)Leltos/simpledialogfragment/form/Input;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    return-object p0
.end method

.method protected validatePattern(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 6
    iget-object v1, p0, Leltos/simpledialogfragment/form/Input;->compiledPattern:Ljava/util/regex/Pattern;

    if-nez v1, :cond_0

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/form/Input;->compiledPattern:Ljava/util/regex/Pattern;

    .line 8
    :cond_0
    iget-object v0, p0, Leltos/simpledialogfragment/form/Input;->compiledPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->matches()Z

    move-result p2

    if-nez p2, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Leltos/simpledialogfragment/form/Input;->getPatternError(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public validatePatternAlphanumeric()Leltos/simpledialogfragment/form/Input;
    .locals 2

    sget v0, Leltos/simpledialogfragment/c$n;->B:I

    const-string v1, "^[a-zA-Z0-9]*$"

    invoke-virtual {p0, v1, v0}, Leltos/simpledialogfragment/form/Input;->validatePattern(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public validatePatternEmail()Leltos/simpledialogfragment/form/Input;
    .locals 2

    sget v0, Leltos/simpledialogfragment/c$n;->V:I

    const-string v1, "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    invoke-virtual {p0, v1, v0}, Leltos/simpledialogfragment/form/Input;->validatePattern(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public validatePatternLetters()Leltos/simpledialogfragment/form/Input;
    .locals 2

    sget v0, Leltos/simpledialogfragment/c$n;->X:I

    const-string v1, "^[a-zA-Z]*$"

    invoke-virtual {p0, v1, v0}, Leltos/simpledialogfragment/form/Input;->validatePattern(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public validatePatternStrongPassword()Leltos/simpledialogfragment/form/Input;
    .locals 2

    .line 1
    iget v0, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v1}, Leltos/simpledialogfragment/form/Input;->min(I)Leltos/simpledialogfragment/form/Input;

    .line 2
    :cond_0
    sget v0, Leltos/simpledialogfragment/c$n;->X0:I

    const-string v1, "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@%_/\'!&#:;,<>=~\"\\|\\*\\+\\-\\$\\^\\?\\.\\(\\)\\{\\}\\[\\]\\\\])(?=\\S+$).*$"

    invoke-virtual {p0, v1, v0}, Leltos/simpledialogfragment/form/Input;->validatePattern(Ljava/lang/String;I)Leltos/simpledialogfragment/form/Input;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Leltos/simpledialogfragment/form/FormElement;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->hint:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->hintResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->textResourceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->inputType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->maxLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->minLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->suggestionArrayRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->suggestionStringResArray:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 11
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->suggestions:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 12
    iget-boolean p2, p0, Leltos/simpledialogfragment/form/Input;->passwordToggleVisible:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Leltos/simpledialogfragment/form/Input;->forceSuggestion:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->pattern:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Leltos/simpledialogfragment/form/Input;->patternError:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget p2, p0, Leltos/simpledialogfragment/form/Input;->patternErrorId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget-boolean p2, p0, Leltos/simpledialogfragment/form/Input;->isSpinner:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
