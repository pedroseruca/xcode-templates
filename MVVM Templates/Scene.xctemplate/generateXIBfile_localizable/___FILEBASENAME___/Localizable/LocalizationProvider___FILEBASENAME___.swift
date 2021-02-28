import Localization

final class ___FILEBASENAMEASIDENTIFIER___ {
    private let localizer: LocalizerType

    init(localizer: LocalizerType) {
        self.localizer = localizer
    }

    //private(set) lazy var returnsAndExchange: String = localize(key: .returnsAndExchange)
}

private extension ___FILEBASENAMEASIDENTIFIER___ {
    func localize(_ key: Localizable___VARIABLE_productName:identifier___.LocalizableKey) -> String {
        Localizable___VARIABLE_productName:identifier___.localize(key: key, localizer: localizer)
    }
}

